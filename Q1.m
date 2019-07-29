
A = FirstDerivative1(100, (2*pi)/100);

x = linspace(-pi, pi, 100)';

sinx = sin(x);

cosx = cos(x);

figure()
A*sinx
plot(A*sinx)
hold on
plot(cosx)
title("steps = 100")

norm(A*sinx - cosx);

A = FirstDerivative1(1000, (2*pi)/1000);

x = linspace(-pi, pi, 1000)';

sinx = sin(x);

cosx = cos(x);

figure()
plot(A*sinx)
hold on
plot(cosx)
title("steps = 1000")

norm(A*sinx - cosx);

norm_holder = zeros(1000/50, 1);
h_holder = zeros(1000/50, 1);
i = 1;
for n = 500:50:1000
    
    x = linspace(-pi, pi, n)';
    
    A = FirstDerivative1(n, (2*pi)/n);

    sinx = sin(x);

    cosx = cos(x);

    norm_holder(i) = norm(A*sinx - cosx);
    h_holder(i) = (2*pi)/n;
    i = i + 1;
    
end
figure()
plot(h_holder, norm_holder)
title("h v error(norm)")
    