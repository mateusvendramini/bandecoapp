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




Admin.create( login: "carlinhos", senha: "123", nome: "carlinhos")
#cria primeio adm
lista_nome = [ "central", "prefeitura", "quimica"]

lista_nome.each do |f|
	Restaurante.create(nome: f, cardapio: f, layout: f, mapa: f, foto: f)
	
end


Restaurante.create(nome: "fisica", cardapio: " https://uspdigital.usp.br/rucard/Jsp/cardapioSAS.jsp?codrtn=8", layout: "700,250,760,280;700,280,760,310;700,310,760,340;700,340,760,370;640,340,720,370;580,340,640,370;", mapa: "/assets/bandejao_fisica_mao.jpeg", foto: " /assets/fisica_foto.jpg")
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