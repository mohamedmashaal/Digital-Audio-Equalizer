function plot_iir_filters(data,Fs,gain)
% return composit data
f = figure('visible','off');
%low pass filter with cutoff frequency of 170Hz
filter_obj = iir_low_pass(170,Fs);
dummy_data = filter(filter_obj,data);
plot(dummy_data)
saveas(f,'fig_1_iir_t','jpg')
[freq_audio,P1]= getFreq(dummy_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_1_iir_f','jpg');
composite_data = dummy_data * gain(1);

%band pass filter 170 - 310 Hz
filter_obj = iir_band_pass(170,310,Fs);
dummy_data = filter(filter_obj,data);
plot(dummy_data)
saveas(f,'fig_2_iir_t','jpg')
[freq_audio,P1]= getFreq(dummy_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_2_iir_f','jpg');
composite_data = composite_data + dummy_data * gain(2);

%band pass filter 310 - 600 Hz
filter_obj = iir_band_pass(310,600,Fs);
dummy_data = filter(filter_obj,data);
plot(dummy_data)
saveas(f,'fig_3_iir_t','jpg')
[freq_audio,P1]= getFreq(dummy_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_3_iir_f','jpg');
composite_data = composite_data + dummy_data * gain(3);

%band pass filter 600 - 1k Hz
filter_obj = iir_band_pass(600,1000,Fs);
dummy_data = filter(filter_obj,data);
plot(dummy_data)
saveas(f,'fig_4_iir_t','jpg')
[freq_audio,P1]= getFreq(dummy_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_4_iir_f','jpg');
composite_data = composite_data + dummy_data * gain(4);

%band pass filter 1k - 3k Hz
filter_obj = iir_band_pass(1000,3000,Fs);
dummy_data = filter(filter_obj,data);
plot(dummy_data)
saveas(f,'fig_5_iir_t','jpg')
[freq_audio,P1]= getFreq(dummy_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_5_iir_f','jpg');
composite_data = composite_data + dummy_data * gain(5);

%band pass filter 3k - 6k Hz
filter_obj = iir_band_pass(3000,6000,Fs);
dummy_data = filter(filter_obj,data);
plot(dummy_data)
saveas(f,'fig_6_iir_t','jpg')
[freq_audio,P1]= getFreq(dummy_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_6_iir_f','jpg');
composite_data = composite_data + dummy_data * gain(6);

%band pass filter 6k - 12k Hz
filter_obj = iir_band_pass(6000,12000,Fs);
dummy_data = filter(filter_obj,data);
plot(dummy_data)
saveas(f,'fig_7_iir_t','jpg')
[freq_audio,P1]= getFreq(dummy_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_7_iir_f','jpg');
composite_data = composite_data + dummy_data * gain(7);

%band pass filter 12k - 14k Hz
filter_obj = iir_band_pass(12000,14000,Fs);
dummy_data = filter(filter_obj,data);
plot(dummy_data)
saveas(f,'fig_8_iir_t','jpg')
[freq_audio,P1]= getFreq(dummy_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_8_iir_f','jpg');
composite_data = composite_data + dummy_data * gain(8);

%band pass filter 14k - 16k Hz
filter_obj = iir_band_pass(14000,16000,Fs);
dummy_data = filter(filter_obj,data);
plot(dummy_data)
saveas(f,'fig_9_iir_t','jpg')
[freq_audio,P1]= getFreq(dummy_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_9_iir_f','jpg');
composite_data = composite_data + dummy_data * gain(9);
plot(composite_data)
saveas(f,'fig_composite_iir_t','jpg')
[freq_audio,P1]= getFreq(composite_data,Fs);
plot(freq_audio,P1);
saveas(f,'fig_composite_iir_f','jpg');