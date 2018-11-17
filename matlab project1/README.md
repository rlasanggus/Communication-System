## matlab project1
### chapter2  
### <pre>hw2_1</pre>  
1. ![image](https://user-images.githubusercontent.com/43701183/48659861-308a4a80-ea9b-11e8-8b77-ff71ad428e55.png)  
2. MATLAB을 이용하여 원래신호 x(t)의 파형을 그리고, x(t)의 한 주기 부분에 대한 푸리에 급수의 근사치 파형을 n = 1, 3, 5, 7, 9에 대해서 그려라. 이때 n값이 증가 함에 따라 근사치 파형이 원래 신호 x(t)의 파형과 유사해짐에 주목할 필요가 있다.  
3. 이산화된 크기 스펙트럼(magnitude spectrum) |xn|과 위상 스펙트럼(phase spectrum)∠xn 을 |n|≤20에 대해서 그려라  
* * *  
<code>hw2_1_1</code>  
```matlab
plot(t,series(xn_f, t, 1/4, 7777));
hold on
for n=1:9
    plot(t,series(xn_f,t,1/4,n));
end
```
[series]() 함수를 이용. n에 따른 wave를 그림  
```matlab
figure(2);
spectrum_mag(xn_f,20);
hold on;
```  
[spectrm_mag]()함수를 이용 magnitude spectrum을 그림  
```matlab
figure(3);
spectrum_phase(xn_f,20);
hold on;
```  
[spectrum_phase]()함수를 이용 phase spectrum을 그림  
#### <code>series(xn_f, t, f0, n)</code>  
```matlab
function wave = series(xn_f, t, f0, n)
temp = xn_f(0);
for k= 1 : 1 : n
    func = @(x) xn_f(k)*exp(i*2*pi*k*f0*x) + xn_f(-k)*exp(j*2*pi*(-k)*f0*x);
    temp = temp + func(t);
end
wave = temp;
end
```
푸리에 급수전개의 계수 xn 공식에 따라 함수를 정의.  
#### <code>spectrum_mag(xn_f, n)</code>  
```matlab
function spectrum_mag(xn_f, n)
for i= -n : 1 : n
    amp = abs(xn_f(i));
    stem(i, amp);
    hold on
end
hold off;
end
```  
n에 대한 magnitude spectrum은 -n~n까지의 크기 스펙트럼.  
Furier series의 magnitude spectrum은 stem을 이용 그래프를 작성  

#### <code>spectrum_phase(xn_f, n)</code>  
```matlab
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
```
0은 음수의 0이 없으므로 하나만.  
-n의 angle과 n의 angle을 stem함수를 이용 그래프를 작성  
### <pre>hw2_3</pre>
1.그림 CP-2.3에 나타난 두 개의 신호의 크기와 위상 스펙트럼을 그려라 x2(t)는 x1(t)가 시간천이된 것임에 유의한다. 따라서 두 신호가 동일한 크기 스펙트럼을 가지게 됨을 예측할 수 있다.  

### <pre>hw2_5</pre>  
![image](https://user-images.githubusercontent.com/43701183/48659866-4566de00-ea9b-11e8-8ddc-0ce6f4506521.png)  
1. x(t)와 크기스펙트럼 |X(f)|를 그려라  
2. f0 = 200Hz에 대해 등가의 저역통과 신호를 구하고, 그 크기 스펙트럼을 그려라. 또한 x(t)의 동위상 성분과 직교위상 성분 및 x(t)의 포락선을 그려라.  

