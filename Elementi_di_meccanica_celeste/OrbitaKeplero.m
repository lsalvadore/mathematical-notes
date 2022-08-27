function [XX YY] = OrbitaKeplero(SemilatoRetto,Eccentricita,AnomaliaMassimaDisegnata)
	Risoluzione = 10000;
	AnomaliaVera = linspace(0,AnomaliaMassimaDisegnata,Risoluzione);
	R = SemilatoRetto ./ ( 1 + Eccentricita * cos(AnomaliaVera));
	XX = R .* cos(AnomaliaVera);
	YY = R .* sin(AnomaliaVera);
	XX = [XX XX];
	YY = [YY -YY];
endfunction
