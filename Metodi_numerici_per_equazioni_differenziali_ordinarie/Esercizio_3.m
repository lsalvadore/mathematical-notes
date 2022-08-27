addpath("../Metodi_numerici_per_la_risoluzione_di_equazioni");

t0 = 0; 
tmax = 100;

Passi = [0.1, 0.2, 0.01];

k = 1;
eta = 0.1;

f = @(t,X) [X(2); - k * X(1) - eta * X(2)];
Jacobiano = @(X) [0, 1;-k, - eta];

X0 = [1;0];

for iter=1:3
	subplot(1,3,iter);
	hold on;
	h = Passi(iter);
	[Discretizzazione SoluzioneEuleroEsplicito] = EuleroEsplicito(f,t0,tmax,X0,h);
	[Discretizzazione SoluzioneEuleroImplicito] = EuleroImplicito(f,Jacobiano,t0,tmax,X0,h);
	[Discretizzazione SoluzioneTrapezi] = Trapezi(f,Jacobiano,t0,tmax,X0,h);
	plot(Discretizzazione,SoluzioneEuleroEsplicito(1,:),"-r;Eulero esplicito;");
	plot(Discretizzazione,SoluzioneEuleroImplicito(1,:),"-g;Eulero implicito;");
	plot(Discretizzazione,SoluzioneTrapezi(1,:),"-b;Trapezi;");
endfor
