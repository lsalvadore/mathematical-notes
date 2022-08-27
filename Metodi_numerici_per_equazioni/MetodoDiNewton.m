function Successione = MetodoDiNewton(F,Jacobiano,PuntoIniziale,
					NumeroDiIterazioni)
	Successione = [PuntoIniziale];
	for Indice = 1:NumeroDiIterazioni
		Successione = [Successione, ...
			Successione(:,end) ...
			- inv(Jacobiano(Successione(:,end))) ...
			* F(Successione(:,end))];
	endfor
endfunction
