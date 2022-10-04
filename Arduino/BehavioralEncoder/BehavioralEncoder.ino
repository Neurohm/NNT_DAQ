/* Read Quadrature Encoder
   Connect Encoder to Pins encoder0PinA, encoder0PinB, and +5V.

*/

int val;
int encoder0PinA = 6;
int encoder0PinB = 5;
int encoder0Pos = 0;
long int encoder0PosTot = 0;
int encoder0PinALast = LOW;
int n = LOW;
int counter = 250;
int encoder0Reward = 2;
int LED1 = A1;
int trigger = 10;
int output = 3;
int previousState;
int LED2 = A2;
int j = 0;
int flag = 0;
int valve = 3;
unsigned long microsStart;
unsigned long microsFix;
unsigned long deltaT;
float convertPos;
int reward = 7;

int sampEncoderPos = 0;
int sampEncoderPosPrev = 0;
int changePos = 0;
unsigned long sampTime = 0;
int encoder_flag = 0;

int fs_encoder = 500; // the sampling frequency of the encoder 

void setup() 
{
  pinMode (encoder0PinA, INPUT);
  pinMode (encoder0PinB, INPUT);
  pinMode (encoder0Reward, OUTPUT);
  pinMode (trigger, INPUT);
  pinMode (valve,OUTPUT);
  pinMode (LED1, OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(output,OUTPUT);
  digitalWrite(output,LOW);
  digitalWrite(valve,LOW);
  cli(); // stop interrupts
  
  // set TIMER1 interrupt at 2kHz
  TCCR1A = 0;// set entire TCCR1A register to 0
  TCCR1B = 0;// same for TCCR1B
  TCNT1  = 0;//initialize counter value to 0
  // set compare match register for 0.5kHz increments
  OCR1A = 3999;// = (16*10^6) / (fs_encoder*8) - 1 (must be <65536)
  // turn on CTC mode
  TCCR1B |= (1 << WGM12);
  // Set CS10 and CS12 bits for 8 prescaler
  TCCR1B |= (1 << CS11) | (0 << CS10);  
  // enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A); 

  sei(); // allow interrupts
  
  previousState = digitalRead(trigger);
  Serial.begin (115200);
  microsStart=micros();
  Serial.print("Ready");
 
}

void loop() 
{
  if(previousState == LOW && digitalRead(trigger) == HIGH){
    flag = 1;
    microsFix = micros();
    previousState = HIGH;
  }
  else if(previousState == HIGH && digitalRead(trigger) == LOW){
    flag = 0;
    convertPos = 0;
    encoder0PosTot = 0;
    previousState = LOW;
    sampEncoderPosPrev = 0;
  }
  if(flag==1)
  {
    n = digitalRead(encoder0PinA);
    if ((encoder0PinALast == LOW) && (n == HIGH)) {
      deltaT = microsStart;
      microsStart = micros()-microsFix;
      analogWrite(LED1,128);
      if (digitalRead(encoder0PinB) == LOW) 
      {
        encoder0Pos++;
        encoder0PosTot++;
      } else 
      {
        encoder0Pos--;
        encoder0PosTot--;
      }
    }
    encoder0PinALast = n;
    digitalWrite(LED1,LOW);
  }

  if(encoder_flag == 1)
  {
    changePos = sampEncoderPos - sampEncoderPosPrev;
    if(changePos != 0)
    {
      convertPos = (2*3*3.141*2.54*changePos)/1000.00;
      Serial.print(convertPos);
      Serial.print("\t");
      Serial.println((sampTime-microsFix)/1000);
      sampEncoderPosPrev = sampEncoderPos;
    }
    encoder_flag = 0;
  }

  if(convertPos >= 50)
  {
    flag = 0;
    convertPos = 0;
    sampEncoderPos = 0;
    sampEncoderPosPrev = 0;
    encoder0PosTot = 0;
    digitalWrite(output,HIGH);
    digitalWrite(LED2,HIGH);
    digitalWrite(valve,HIGH);
    delay(1000);
    digitalWrite(output,LOW);
    digitalWrite(LED2,LOW);
    digitalWrite(valve,LOW);
    microsFix = micros();
    flag = 1;
  }
}

ISR(TIMER1_COMPA_vect)
{
  if (flag == 1)
  {
    sampTime = micros();
    sampEncoderPos = encoder0PosTot;
    encoder_flag = 1;
  }
  else{
    sampTime = 0;
    sampEncoderPos = 0;
  }
}
