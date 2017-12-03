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





Admin.create( login: "carlinhos", senha: "123", nome: "carlinhos")
#cria primeio adm



Restaurante.create(nome: "fisica", cardapio: " https://uspdigital.usp.br/rucard/Jsp/cardapioSAS.jsp?codrtn=8",
 layout: "690,220,760,250;690,250,760,280;690,280,760,310;690,310,760,340;690,340,760,370;690,370,760,400;
 640,360,690,400;540,360,640,400;440,360,540,400;340,360,440,400;240,360,340,400;140,360,240,400;40,360,140,400;0,360,40,400;",
  mapa: "/assets/bandejao_fisica_mao.jpeg", foto: " /assets/fisica_foto.jpg")

Restaurante.create(nome: "prefeitura", cardapio: " tanto faz",
 layout: "230,26,330,60;330,26,430,60;430,26,530,60;530,26,630,60;630,26,730,60;
 680,60,730,160;680,160,730,260;680,260,730,360;
 630,360,730,390;500,360,630,390;500,390,550,490;500,490,550,440;
 500,490,650,540;650,490,750,540;750,490,900,540;",
  mapa: "/assets/Pref_mapinha.png", foto: " /assets/pref_foto.jpg")

Restaurante.create(nome: "central", cardapio: " carlinhos",
 layout: "410,220,450,260;410,260,450,300;350,300,450,340; 250,300,350,340;150,300,250,340;0,300,150,340;|460,220,510,260;460,260,510,300;460,300,560,340;560,300,660,340;660,300,760,340;760,300,900,340;",
  mapa: "/assets/Central_mapinha.png", foto: "/assets/bandejao_central_img.jpg")


Restaurante.create(nome: "quimica", cardapio: " 734",
 layout: "738,280,758,340;738,340,758,400;738,400,758,440;698,420,738,440;598,420,698,440;498,420,598,440;408,420,498,440;408,440,428,480;408,480,428,520;308,500,408,520;208,500,308,520;108,500,208,520;0,500,108,520;",
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