function hw2_3
df=0.01;
fs=10;
ts=1/fs;
t=[-5:ts:5];
x1=zeros(size(t));
x1(41:51)=t(41:51)+1;
x1(52:61)=ones(size(x1(52:61)));
x2=zeros(size(t));
x2(51:71)=x1(41:61);
[X1,x11,df1]=fftseq(x1,ts,df);
[X2,x21,df2]=fftseq(x2,ts,df);
X11=X1/fs;
X21=X2/fs;
f=[0:df1:df1*(length(x11)-1)]-fs/2;
plot(f,fftshift(abs(X11)))
hold on;
plot(f,fftshift(abs(X21)),'--')
title('magnitude');
xlabel('f');
ylabel('|X(f)|');
legend('|X(f)1|', '|X(f)2|');
hold off;
%-----
figure
plot(f(500:525),fftshift(angle(X11(500:525))),f(500:525),fftshift(angle(X21(500:525))),'--')
hold on;
title('phase');
xlabel('f');
ylabel('¡ÐX(f)');
legend('¡ÐX(f)1', '¡ÐX(f)2');
hold off;
end