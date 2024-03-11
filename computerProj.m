 numerator = 1000;
    %denominator = (0.1*10+0.9*10+1000*0.001);
    sys = tf(numerator, [1 9 1]);
    step(sys);
    %poles = roots(denominator);
    %t = 0:0.1:20;
    %u = ones(size(t));
%y = lsim(sys, u, t);
%plot(t,y);