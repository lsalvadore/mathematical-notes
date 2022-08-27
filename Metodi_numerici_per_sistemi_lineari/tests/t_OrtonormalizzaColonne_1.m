load Quadrata_Triangolare;
[Q R] = OrtonormalizzaColonne(Quadrata_Triangolare)
Quadrata_Triangolare - Q * R
Q' * Q - eye(size(Q)(2))
