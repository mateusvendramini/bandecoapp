module DadoInseridosHelper
	def cria_dado (id_fila, tamanho)
		DadoInserido.create(id_fila: id_fila, posicao: tamanho)
	end
		
end
