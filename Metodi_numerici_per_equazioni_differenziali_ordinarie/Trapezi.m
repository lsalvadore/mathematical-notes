function [t, y] = Trapezi(f, Jacobiano, t0, tmax, y0, h)

IterazioniNewton = 5;

t = t0:h:tmax;

n = size(y0)(1);

y = zeros(n,length(t));
y(:,1) = y0;

for i = 1:size(y)(2) - 1
	y(:,i + 1) = ...
		MetodoDiNewton(...
		@(x) y(:,i) + h/2 * f(t(i),y(:,i)) + h/2 * f(t(i + 1),x) - x, ...
		@(x) h/2 * Jacobiano(t(i + 1),x) - eye(n), ...
		y(:,i),IterazioniNewton)(:,end);
endfor

endfunction
