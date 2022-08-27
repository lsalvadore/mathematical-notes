function DisegnaAssi(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso)
	plot([EstremoSinistro,EstremoDestro],[0,0],"-k");
	plot([0,0],[EstremoAlto,EstremoBasso],"-k");
	plot([EstremoDestro],[0],">k");
	plot([0],[EstremoAlto],"^k");
endfunction
