function DisegnaAssi3(EstremoDestro,EstremoAlto,EstremoSinistro,EstremoBasso,EstremoAnteriore,EstremoPosteriore)
	plot3([EstremoAnteriore,EstremoPosteriore],[0,0],[0,0],"-k");
	plot3([0,0],[EstremoSinistro,EstremoDestro],[0,0],"-k");
	plot3([0,0],[0,0],[EstremoAlto,EstremoBasso],"-k");
	plot3([EstremoAnteriore],[0],[0],"vk");
	plot3([0],[EstremoDestro],[0],">k");
	plot3([0],[0],[EstremoAlto],"^k");
endfunction
