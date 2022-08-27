addpath("../Metodi_numerici_per_la_risoluzione_di_equazioni");

t0 = - 0; 
tmax = 5;

Passi = 2.**-(1:10);

ErroreEuleroEsplicito = [];
ErroreEuleroImplicito = [];
ErroreTrapezi = [];

%f = @(t,y) - y + sin(t) + cos(t);
%DerivataDifRispettoAdy = @(t,y) -1;
%FunzioneSoluzione = @(t) exp(-t) + sin(t);

epsilon = 10.**-6;
f = @(t,y) - (1 + 1./(2 * sqrt(t + epsilon))) * y + (1 + 1./(2 * sqrt(t + epsilon))) * sin(t) + cos(t);
DerivataDifRispettoAdy = @(t,y) - (1 + 1./(2 * sqrt(t + epsilon)));
FunzioneSoluzione = @(t) exp(-t-sqrt(t + epsilon)) + sin(t);

y0 = FunzioneSoluzione(t0);

subplot(1,2,1);
hold on;

for h=Passi
	h
	[Discretizzazione SoluzioneEuleroEsplicito] = EuleroEsplicito(f,t0,tmax,y0,h);
	[Discretizzazione SoluzioneEuleroImplicito] = EuleroImplicito(f,DerivataDifRispettoAdy,t0,tmax,y0,h);
	[Discretizzazione SoluzioneTrapezi] = Trapezi(f,DerivataDifRispettoAdy,t0,tmax,y0,h);
	SoluzioneEsatta = FunzioneSoluzione(Discretizzazione);
	ErroreEuleroEsplicito = [ErroreEuleroEsplicito max(abs(SoluzioneEsatta - SoluzioneEuleroEsplicito))];
	ErroreEuleroImplicito = [ErroreEuleroImplicito max(abs(SoluzioneEsatta - SoluzioneEuleroImplicito))];
	ErroreTrapezi = [ErroreTrapezi max(abs(SoluzioneEsatta - SoluzioneTrapezi))];
endfor

plot(Discretizzazione,SoluzioneEsatta,"-k;Soluzione esatta;");
plot(Discretizzazione,SoluzioneEuleroEsplicito,"-r;Eulero esplicito;");
plot(Discretizzazione,SoluzioneEuleroImplicito,"-g;Eulero implicito;");
plot(Discretizzazione,SoluzioneTrapezi,"-b;Trapezi;");

subplot(1,2,2);
hold on;
loglog(Passi,ErroreEuleroEsplicito,"-r;Eulero esplicito;");
loglog(Passi,ErroreEuleroImplicito,"-g;Eulero implicito;");
loglog(Passi,ErroreTrapezi,"-b;Trapezi;");
