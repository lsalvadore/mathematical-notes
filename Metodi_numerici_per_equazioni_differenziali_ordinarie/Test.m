addpath("../Metodi_numerici_per_la_risoluzione_di_equazioni");

f = @(X) [X(1)^2 + X(2)^2 - 1;X(1) + X(2)];
J = @(X) [ 2 * X(1) ,2 * X(2); 1,1];

Iter= 5;

A = MetodoDiNewton(f,J,[0;0],Iter);
