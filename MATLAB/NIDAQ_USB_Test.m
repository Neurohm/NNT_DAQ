%% Aquisition Constants

Fs = 50e3; %Sampling rate

% Generating FSCV Ramp waveform 
VRef = 1.5;                 % Voltage of the reference electrode 
Vmax = 1;                   % The maximum voltage of the ramp relative to the reference electrode 
Vmin = -0.5;                % The minimum voltage of the ramp relative to the reference electrode
rampSlope = 300;            % Ramp slope in V/s
repetetionTime = 100e-3;    % Repetetion rate in seconds

rampTime = 2*(Vmax-Vmin)/rampSlope; 
N = repetetionTime * Fs;
N1 = (rampTime/2) * Fs;
N2 = rampTime * Fs;

fscvRamp = [linspace(Vmin+VRef,Vmax+VRef,N1), linspace(Vmax+VRef,Vmin+VRef,N2-N1), Vmin+VRef + zeros(1,N-N2)];
fscvRamp1s = repmat(fscvRamp,1,1/repetetionTime);

s = daq.createSession('ni');
ch = addAnalogInputChannel(s,'Dev1',0,'voltage');

s.Rate = Fs; %Sampling rate 
s.IsContinous = true;
