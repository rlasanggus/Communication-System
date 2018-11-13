function spectrum_phase(xn_f, n)
p = angle(xn_f(0));
stem(0, p);
hold on;
for i=1:1:n
    p = angle(xn_f(i));
    stem(i, p);
    p = angle(xn_f(-i));
    stem(-i, p);
end
hold off;
end