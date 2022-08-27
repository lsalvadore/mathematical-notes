h = 50;
r = 5;
Res = 10000;
theta = pi/4;
section = Res/4;

d = 2 * r;

#-----------------------------------------------
#leva
#-----------------------------------------------
y = linspace(0,h,Res);

Xleva = [zeros(1,2 * Res)];
Yleva = [y, -y];
Zleva = [zeros(1,2 * Res)];

#-----------------------------------------------
#cilindro
#-----------------------------------------------
y = linspace(0,h,Res);

Xcil = [zeros(1,2 * Res)];
Ycil = [y, y];
Zcil = [- r * ones(1,Res), r * ones(1,Res)];

alpha = linspace(0,2*pi,Res);
x = r * cos(alpha);
z = r * sin(alpha);

Xcil = [Xcil, x, x];
Ycil = [Ycil, zeros(1,Res), h * ones(1,Res)];
Zcil = [Zcil, z, z];

#-----------------------------------------------
#sezione del cilindro
#-----------------------------------------------
Xcil = [Xcil, x];
Ycil = [Ycil, y(section) * ones(1,Res)];
Zcil = [Zcil, z];

#-----------------------------------------------
#base del paraboloide traslato
#-----------------------------------------------
Xpartrasl = [x];
Ypartrasl = [-0.5 * h * ones(1,Res)];
Zpartrasl = [z];

#-----------------------------------------------
#superficie laterale del paraboloide
#-----------------------------------------------
z = r * sqrt(y/h);
Xpar = [zeros(1,2 * Res)];
Ypar = [y, y];
Zpar = [z, -z];

#-----------------------------------------------
#superficie laterale del paraboloide traslato
#-----------------------------------------------
Xpartrasl = [Xpartrasl, zeros(1,2 * Res)];
Ypartrasl = [Ypartrasl, y - 1.5 * h, y - 1.5 * h];
Zpartrasl = [Zpartrasl, z, -z];

#-----------------------------------------------
#sezione del paraboloide
#-----------------------------------------------
x = z(section) * cos(alpha);
z = z(section) * sin(alpha);

Xpar = [Xpar, x];
Ypar = [Ypar, y(section) * ones(1,Res)];
Zpar = [Zpar, z];

#-----------------------------------------------
#sezione del paraboloide traslata
#-----------------------------------------------
Xpartrasl = [Xpartrasl, x];
Ypartrasl = [Ypartrasl, -h * ones(1,Res)];
Zpartrasl = [Zpartrasl, z];

#-----------------------------------------------
#rotazione
#-----------------------------------------------
R = [	cos(theta),	-sin(theta),	0;
	sin(theta),	cos(theta),	0;
	0		0		1];
Aleva = R * [Xleva; Yleva; Zleva];
Acil = R * [Xcil; Ycil; Zcil];
Apar = R * [Xpar; Ypar; Zpar];
Apartrasl = R * [Xpartrasl; Ypartrasl; Zpartrasl];

Immagine = figure("visible","off");
axis off;
hold on;
plot(Aleva(2,:),Aleva(3,:),".k");
plot(Acil(2,:),Acil(3,:),".b");
plot(Apar(2,:),Apar(3,:),".r");
plot(Apartrasl(2,:),Apartrasl(3,:),".m");
plot(0,0,"^k","markersize",10,"linewidth",15);
print(Immagine, "Immagine_Archimede_MetodoMeccanico.png");
