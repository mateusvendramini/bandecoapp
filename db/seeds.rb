# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#reseta db caso necessário
Admin.all.each do | f| 
	f.destroy
end

Restaurante.all.each do | f| 
	f.destroy
end
Fila.all.each do | f| 
	f.destroy
end
DadoInserido.all.each do |f|
	f.destroy
end
Cardapio.all.each do |f|
	f.destroy
end





Admin.create( login: "aluno", senha: "epusp", nome: "GrupoPMR3304")
#cria primeio adm



Restaurante.create(nome: "Física", 
 layout: "690,220,760,250;
690,250,760,280;
690,280,760,310;
690,310,760,340;
690,340,760,370;
690,370,760,400; 
640,360,690,400;
590,360,640,400;
540,360,590,400;
500,360,540,400;
460,360,500,400;
420,360,460,400;
380,360,420,400;
340,360,380,400;
300,360,340,400;
260,360,300,400;
220,360,260,400;
180,360,220,400;
140,360,180,400;
100,360,140,400;
60,360,100,400;
30,360,60,400;
0,360,30,400;",
  mapa: "/assets/bandejao_fisica_mao.jpeg", foto: " /assets/fisica_foto.jpg")

Restaurante.create(nome: "Prefeitura", 
 layout: "230,26,270,60;
270,26,310,60;
310,26,350,60;
350,26,390,60;
390,26,430,60;
430,26,470,60;
470,26,510,60;
510,26,550,60;
550,26,590,60;
590,26,630,60;
630,26,660,60;
660,26,700,60;
680,26,730,60;
680,60,730,100;
680,100,730,140;
680,140,730,180;
680,180,730,220;
680,220,730,260;
680,260,730,300;
680,300,730,340;
680,340,730,360;
680,360,730,400;
640,360,680,400;
600,360,640,400;
560,360,600,400;
500,360,560,400;
500,400,560,440;
500,440,560,480;
500,480,560,520;",
  mapa: "/assets/Pref_mapinha.png", foto: " /assets/pref_foto.jpg")

Restaurante.create(nome: "Central", 
 layout: "410,220,450,260;
410,260,450,300;
410,300,450,340;
370,300,410,340;
330,300,370,340;
290,300,330,340;
250,300,290,340;
210,300,250,340;
170,300,210,340;
130,300,170,340;
90,300,130,340;
50,300,90,340;
10,300,50,340;
|
460,220,500,260;
460,260,500,300;
460,300,500,340;
500,300,540,340;
540,300,580,340;
580,300,620,340;
620,300,660,340;
660,300,700,340;
700,300,740,340;
740,300,780,340;
780,300,820,340;
820,300,860,340;
860,300,900,340;",
  mapa: "/assets/Central_mapinha.png", foto: "/assets/central_foto.jpg")


Restaurante.create(nome: "Química", 
 layout: "738,280,758,300;
738,300,758,320;
738,320,758,340;
738,340,758,360;
738,360,758,380;
738,380,758,400;
738,400,758,420;
738,420,758,440;
718,420,738,440;
698,420,718,440;
678,420,698,440;
658,420,678,440;
638,420,658,440;
618,420,638,440;
598,420,618,440;
578,420,598,440;
558,420,578,440;
538,420,558,440;
518,420,538,440;
498,420,518,440;
478,420,498,440;
458,420,478,440;
438,420,458,440;
418,420,438,440;
418,440,438,460;
418,460,438,480;
418,480,438,500;
418,500,438,520;
418,520,438,540;",
  mapa: "/assets/Mapa_Quim.png", foto: "/assets/quimica_foto.jpg")

Restaurante.all.each do |g| #associa uma fila a um restaurante
	Fila.create(id_restaurante: g.id, estado_fila: "0".to_i)
	Cardapio.create(id_restaurante: g.id, dia_semana: "Monday", conteudo: "cardapio nao registrado")
	Cardapio.create(id_restaurante: g.id, dia_semana: "Tueday", conteudo: "cardapio nao registrado")
	Cardapio.create(id_restaurante: g.id, dia_semana: "Wednesday", conteudo: "cardapio nao registrado")
	Cardapio.create(id_restaurante: g.id, dia_semana: "Thursday", conteudo: "cardapio nao registrado")
	Cardapio.create(id_restaurante: g.id, dia_semana: "Friday", conteudo: "cardapio nao registrado")
	Cardapio.create(id_restaurante: g.id, dia_semana: "Saturday", conteudo: "cardapio nao registrado")
	Cardapio.create(id_restaurante: g.id, dia_semana: "Sunday", conteudo: "cardapio nao registrado")
end