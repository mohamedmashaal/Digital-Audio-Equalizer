function [freq_data, P1] = getFreq(dummy_data,Fs)
audio_len = length(dummy_data);
FFT_audio = fft(dummy_data);
P2 = abs(FFT_audio/audio_len);
P1 = P2(1:audio_len/2+1);
P1(2:end-1) = 2*P1(2:end-1);
freq_data = Fs*(0:(audio_len/2))/audio_len;
end