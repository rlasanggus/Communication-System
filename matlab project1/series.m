function wave = series(xn_f, t, f0, n)
temp = xn_f(0);
for k= 1 : 1 : n
    func = @(x) xn_f(k)*exp(i*2*pi*k*f0*x) + xn_f(-k)*exp(j*2*pi*(-k)*f0*x);
    temp = temp + func(t);
end
wave = temp;
end
    