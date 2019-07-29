func = @(t,u) u*cos(t)

u0 = 1;
t0 = 0;
tf = 1;

err_holder = ones(5, 1);
h_holder = ones(5,1);
h = 0.1;
h_holder(1) = h
for i = 1:5
    
    [df, t, err] = ForwardEuler(func, u0, t0, tf, h);
    h = h/2;
    h_holder(i) = h;
    err_holder(i) = norm(err);
    
end

figure

plot(h_holder, err_holder)
title("convergence of local error @ t = 1")
xlabel("h")
ylabel("error")

[df, t err] = ForwardEuler(func, u0, t0, tf, 0.1);
figure

plot(t, df)
hold on
[t,y] = ode45(func, [0 1], 1);
plot(t, y)
title("Forward Euler v ode45")

legend("Forward Euler", "ode45")

%how sensitive is the error to changes in h?
conv_r = (max(err_holder) - min(err_holder))/(max(h_holder) - min(h_holder))
