function spectrum_mag(xn_f, n)
for i= -n : 1 : n
    amp = abs(xn_f(i));
    stem(i, amp);
    hold on
end
hold off;
end
