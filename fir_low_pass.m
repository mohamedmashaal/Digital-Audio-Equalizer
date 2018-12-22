function Hd = fir_low_pass(fc,fs)
%FIR_LOW_PASS Returns a discrete-time filter object.

% FIR Window Lowpass filter designed using the FIR1 function.

% All frequency values are in Hz.
Fs = fs;  % Sampling Frequency

N    = 50;       % Order
Fc   = fc;      % Cutoff Frequency
flag = 'scale';  % Sampling Flag

% Create the window vector for the design algorithm.
win = blackman(N+1);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Fc/(Fs/2), 'low', win, flag);
Hd = dfilt.dffir(b);

% [EOF]
