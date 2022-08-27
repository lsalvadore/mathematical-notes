function [t, y] = EuleroEsplicito(f, t0, tmax, y0, h)

t = t0:h:tmax;

n = size(y0)(1);

y = zeros(n,length(t));
y(:,1) = y0;

for i = 1:size(y)(2) - 1
	y(:,i + 1) = y(:,i) + h * f(t(i),y(:,i));
endfor

endfunction
