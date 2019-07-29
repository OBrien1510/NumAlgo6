function [A] = FirstDerivative1(n,h)

e = ones(n,1);

A = spdiags([-e,e],0:1,n,n);

A(n,n) = 1;
A(n,n-1) = -1;

A = A./h;

end

