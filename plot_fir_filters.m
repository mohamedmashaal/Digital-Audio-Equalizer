function plot_fir_filters(data,Fs,gain)
% return composit data

%low pass filter with cutoff frequency of 170Hz
filter_obj = fir_low_pass(170,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(1);
f = figure('visible','off');
plot(composite_data)
saveas(f,'fig1_fir_t','jpg')

%band pass filter 170 - 310 Hz
filter_obj = fir_band_pass(170,310,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(2);
f = figure('visible','off');
plot(composite_data)
saveas(f,'fig2_fir_t','jpg')

%band pass filter 310 - 600 Hz
filter_obj = fir_band_pass(310,600,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(3);
f = figure('visible','off');
plot(composite_data)
saveas(f,'fig3_fir_t','jpg')

%band pass filter 600 - 1k Hz
filter_obj = fir_band_pass(600,1000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(4);
f = figure('visible','off');
plot(composite_data)
saveas(f,'fig4_fir_t','jpg')

%band pass filter 1k - 3k Hz
filter_obj = fir_band_pass(1000,3000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(5);
f = figure('visible','off');
plot(composite_data)
saveas(f,'fig5_fir_t','jpg')

%band pass filter 3k - 6k Hz
filter_obj = fir_band_pass(3000,6000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(6);
f = figure('visible','off');
plot(composite_data)
saveas(f,'fig6_fir_t','jpg')

%band pass filter 6k - 12k Hz
filter_obj = fir_band_pass(6000,12000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(7);
f = figure('visible','off');
plot(composite_data)
saveas(f,'fig7_fir_t','jpg')

%band pass filter 12k - 14k Hz
filter_obj = fir_band_pass(12000,14000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(8);
f = figure('visible','off');
plot(composite_data)
saveas(f,'fig8_fir_t','jpg')

%band pass filter 14k - 16k Hz
filter_obj = fir_band_pass(14000,16000,Fs);
dummy_data = filter(filter_obj,data);
composite_data = dummy_data * gain(9);
f = figure('visible','off');
plot(composite_data)
saveas(f,'fig9_fir_t','jpg')