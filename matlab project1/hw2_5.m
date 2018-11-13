function hw2_5
%(1)
func = @(x) sinc(100*x).*cos(400*pi*x);
t = linspace(-2,2,5000);
plot(t, func(t));
hold on
xlabel('time');
ylabel('x(t)');
hold off;
%(1)
figure
ts = 0.001;
fs = 1/ts;
df = 0.5;
t = [-500:ts:500];
x1=sinc(100*t).*cos(400*pi*t);
[X1,x11,df1]=fftseq(x1,ts,df);
X11=X1/fs;
f=[0:df1:df1*(length(x11)-1)]-fs/2;
plot(f,fftshift(abs(X11)));
title('magnitude');
xlabel('f');
ylabel('|X(f)|');
hold off;
%(2)
figure;
f0 = 200;
[X1,x11,df1]=fftseq(loweq(x1, ts, f0),ts,df);
X11=X1/fs;
f=[0:df1:df1*(length(x11)-1)]-fs/2;
plot(f,fftshift(abs(X11)));
hold on
title('low pass magnitude');
xlabel('f');
ylabel('|X(f)L|');
hold off;
%(2)
figure;
t = linspace(-2,2,1000);
xl = sinc(100*t);
xc = xl;
plot(t, xc);
hold on;
xlabel('time');
ylabel('Xc(t)');
hold off;
%(2)
figure;
plot(t, abs(xc));
hold on;
xlabel('time');
ylabel('V(t)');
hold off;
end