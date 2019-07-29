function [df] = TaylorApprox(x, h)

%doing out the taykor approx for the centered derivative of sin, we get the
%followig form, where h^2 is the highest order and this the error is of
%order h^2h

%(f(x+h) - f(x-h))/2h ==> 'f(x)'s on both sides cancel as does the first
%order derivative term, leaving us with df/dx and the 3rd order terms. When
%we devide by 2h, the h^3 on the third oder derivative become h^2

%(f(x+h) - f(x-h))/2h ==> df/dx + (h^2/6)*d^3f/dx^3

df = cos(x) + (((h)^2)/6)*cos(x);



end

