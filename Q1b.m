
norm_holder = zeros(1000/50, 1);
h_holder = zeros(1000/50, 1);

A = FirstDerivative2(1000, (2*pi)/1000);

x = linspace(-pi, pi, 1000)';

sinx = sin(x);

cosx = cos(x);

figure()
plot(A*sinx)
hold on
plot(cosx)
title("2nd derivative (step = 1000)")
i = 1
syms variable;
func = sin(variable);
for n = 500:50:1000
    
    x = linspace(-pi, pi, n)';
    
    taylor = TaylorApprox(x, (2*pi)/n);
    
    A = FirstDerivative2(n, (2*pi)/n);
    
    sinx = sin(x);

    cosx = cos(x);
    
    norm(taylor - A*sinx);
    
    norm_holder(i) = norm(A*sinx - cosx);
    h_holder(i) = ((2*pi)/n);
    i = i + 1;
    
end
figure()

plot((h_holder), norm_holder)
title("h^2 v error(norm)")



