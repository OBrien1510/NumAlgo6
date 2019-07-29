function [A] = FirstDerivative2(n,h)

e = ones(n,1);

z = [zeros(n,1) e];

A = spdiags([-e,z],-1:1,n,n);

A(1,1) = 3;
A(1,2) = 4;
A(1,3) = -1;
A(n,n) = 3;
A(n,n-1) = -4;
A(n,n-2) = 1;

A = A./(2*h);

full(A);

end

