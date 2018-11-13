function hw2_1
xn_f = @(x) (1/2)*sinc(x/2);
t = linspace(-2,2,500);
figure(1);
plot(t,series(xn_f, t, 1/4, 7777));
hold on
for n=1:9
    plot(t,series(xn_f,t,1/4,n));
end
title('wave form');
xlabel('t');
ylabel('x(t)');
hold off
figure(2);
spectrum_mag(xn_f,20);
hold on;
title('magnitude');
xlabel('n');
ylabel('x(n)');
hold off;
figure(3);
spectrum_phase(xn_f,20);
hold on;
title('phase');
xlabel('n');
ylabel('¡Ðx(n)');
hold off;
end