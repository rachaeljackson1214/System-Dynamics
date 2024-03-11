zeta = [0.7, 1.0, 1.5];
aVal = zeros(1, 3);
for i = 1:3
    zetaVal = zeta(i);
    a = 4 * zetaVal^2;
    aVal(i) = a;
    numerator = a;
    denominator = [1, 9, a];
    sys = tf(numerator, denominator);
    poles = roots(denominator);
    t = 0:0.1:20;
    u = ones(size(t));
    y = lsim(sys, u, t);
    subplot(3, 1, i);
    plot(t, y);
    title(['Unit Step Response when ζ = ', num2str(zetaVal)]);
    xlabel('Time in s');
    S = stepinfo(sys);
    setTime = S.SettlingTime;
    riseTime = S.RiseTime;
    peakTime = S.PeakTime;
    txt = {'SetTime = ', num2str(setTime)};
    text(8,0.5,txt)
    txt2 = {'RiseTime = ', num2str(riseTime)};
    text(12,0.5,txt2)
    txt3 = {'PeakTime = ', num2str(peakTime)};
    text(16,0.5,txt3)
    grid on;
    hold on;
end