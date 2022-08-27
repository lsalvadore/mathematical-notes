load Rettangolare_1;
[Q R] = OrtonormalizzaColonne(Rettangolare_1)
Rettangolare_1 - Q * R
Q' * Q - eye(size(Q)(2))
