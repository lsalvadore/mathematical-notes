Spessore = 10;

Immagine = figure("visible","off");
axis off;
hold on;
plot([-10 0],[0 0],"-k","linewidth",Spessore);
plot([0 0],[0 10],"-k","linewidth",Spessore);
plot([-7 0],[0 7.5],"-b","linewidth",Spessore);
plot([-5 0],[0 8],"-r","linewidth",Spessore);
print(Immagine, "Immagine_Geometrie_Macchina2.png");
