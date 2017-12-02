class CardapiosController < ApplicationController
  def new
  end

  def index
  	@cardapios = Cardapio.all
  end
  def edit
  	@cardapio = Cardapio.find(params[:id])
  end
 
  def update
  	@Cardapio = Cardapio.find(params[:id])
  	respond_to do |format|
      if @Cardapio.update(cardapio_params)
        format.html { redirect_to "/cardapios/" , notice: 'Cardapio foi editado com sucesso' }
        format.json { render :index, status: :ok, location: @Cardapio }
      else
        format.html { render :edit }
      end
    end
  end

  def set_cardapios
      @Cardapio = Cardapio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cardapio_params
      params.require(:cardapio).permit(:id, :id_restaurante, :dia_semana, :conteudo)
    end
end
