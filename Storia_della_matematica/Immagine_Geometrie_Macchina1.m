Spessore = 10;

CoeffTrasverso = 0.75;
CardTrasverso = 5;
XTrasverso = 5;
YTrasverso = CoeffTrasverso * XTrasverso;

for k=2:CardTrasverso
	XTrasverso = [XTrasverso, XTrasverso(end) + CoeffTrasverso * YTrasverso(end)];
	YTrasverso = [YTrasverso, CoeffTrasverso * XTrasverso(end)];
endfor

Destra = XTrasverso(end);

Immagine = figure("visible","off");
axis("equal");
axis off;
hold on;
plot([0 Destra],[0 0],"-b","linewidth",Spessore);
plot([0 Destra],[0 CoeffTrasverso * Destra],"-b","linewidth",Spessore);
for k=2:CardTrasverso
	plot([XTrasverso(k - 1) XTrasverso(k)],[YTrasverso(k - 1) 0],"-r","linewidth",Spessore);
	plot([XTrasverso(k) XTrasverso(k)],[0 YTrasverso(k)],"-k","linewidth",Spessore);
endfor
print(Immagine, "Immagine_Geometrie_Macchina1.png");
