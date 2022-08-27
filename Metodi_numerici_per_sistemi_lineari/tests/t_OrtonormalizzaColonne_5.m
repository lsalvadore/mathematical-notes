load Rettangolare_2;
[Q R] = OrtonormalizzaColonne(Rettangolare_2)
Rettangolare_2 - Q * R
Q' * Q - eye(size(Q)(2))
