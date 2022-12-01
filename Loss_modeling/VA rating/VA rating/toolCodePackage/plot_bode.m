function [f, mag, phase] = plot_bode(tf, freq_min, freq_max)
    [mag, phase, w] = bode(tf,{freq_min*2*pi freq_max*2*pi});
    f = w/2/pi;
    mag = mag(:);
    phase = phase(:);

    subplot(2,1,1)
    semilogx(f,20*log10(mag))
    xlabel('Frequency (Hz)')
    ylabel('Magnitude (dB)')
    hold on;
    subplot(2,1,2)
    semilogx(f,phase)
    xlabel('Frequency (Hz)')
    ylabel('Phase (degree)')
    hold on
end