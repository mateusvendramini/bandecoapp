class EstimaFilaController < ApplicationController
	#controller do BO
  def update
  	i = 0
  	Restaurante.all.each do |f|
  		#para cada restaurante, listar dados inseridos
  		data = []
  		DadoInserido.all.order(created_at: :desc).each do |h|
  			if Fila.find_by(id: h.id_fila).id_restaurante == f.id #verifica se o dado inserido corresponde ao restaurante
  				if i < 5
  					data.append(h)
  					i = i + 1
  				end
  			end
  		end #agora para cada restaurante, temos um vetor com pelo menos as ultimas posicoes
  		media = 0
  		i = 0
  		data.each do |j|
  			media = media + j.posicao.to_i
  			i = i + 1
  		end
  		if i < 1
  			i = 1
  		end	
  		media = media/i	
  		Fila.find_by(id_restaurante: f.id).update(estado_fila: media)
  		i = 0




  	end

  end
end
