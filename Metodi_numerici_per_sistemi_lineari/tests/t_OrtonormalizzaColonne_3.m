load Rettangolare_Triangolare_2;
[Q R] = OrtonormalizzaColonne(Rettangolare_Triangolare_2)
Rettangolare_Triangolare_2 - Q * R
Q' * Q - eye(size(Q)(2))
