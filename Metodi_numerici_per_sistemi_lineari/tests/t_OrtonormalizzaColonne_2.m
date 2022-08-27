load Rettangolare_Triangolare_1;
[Q R] = OrtonormalizzaColonne(Rettangolare_Triangolare_1)
Rettangolare_Triangolare_1 - Q * R
Q' * Q - eye(size(Q)(2))
