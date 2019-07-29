function [df, t, err] = ForwardEuler(f, u0, t0, tf, h)

n = tf - t0;
n = n/h;
df = zeros(n, 1);
err = zeros(n,1);

for i = 1:n
    
    m = f(t0, u0);
    u1 = u0 + m*h;
    t1 = t0 + h;
    df(i) = u1;
    t(i) = t1;
    %take the final t as the value to record the local error at for each
    %value of h
    if i == n
        err(i) = u1 - u0 - h*exp(sin(u0));
    end
    t0 = t1;
    u0 = u1;
    
end




end

