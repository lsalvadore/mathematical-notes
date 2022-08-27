load Rettangolare_5;
[Q R] = OrtonormalizzaColonne(Rettangolare_5)
Rettangolare_5 - Q * R
Q' * Q - eye(size(Q)(2))
