class DadoInseridosController < ApplicationController
  
  before_action :set_dado_inserido, only: [:show, :edit, :update, :destroy]

  # GET /dado_inseridos
  # GET /dado_inseridos.json
  def index
    @dado_inseridos = DadoInserido.all
  end

  # GET /dado_inseridos/1
  # GET /dado_inseridos/1.json
  def show
  end

  # GET /dado_inseridos/new
  def new
    @dado_inserido = DadoInserido.new
  end

  # GET /dado_inseridos/1/edit
  def edit
  end

  # POST /dado_inseridos
  # POST /dado_inseridos.json
  def create
    @dado_inserido = DadoInserido.new(dado_inserido_params)

    respond_to do |format|
      if @dado_inserido.save
        format.html { redirect_to @dado_inserido, notice: 'Dado inserido was successfully created.' }
        format.json { render :show, status: :created, location: @dado_inserido }
      else
        format.html { render :new }
        format.json { render json: @dado_inserido.errors, status: :unprocessable_entity }
      end
    end
  end
  def create_url 
    DadoInserido.create(id_fila: params[:id_restaurante], posicao: params[:posicao])
    redirect_to "/estima_fila/update"
  end
  def delete
    DadoInserido.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  # PATCH/PUT /dado_inseridos/1
  # PATCH/PUT /dado_inseridos/1.jsons
  def update
    respond_to do |format|
      if @dado_inserido.update(dado_inserido_params)
        format.html { redirect_to @dado_inserido, notice: 'Dado inserido was successfully updated.' }
        format.json { render :show, status: :ok, location: @dado_inserido }
      else
        format.html { render :edit }
        format.json { render json: @dado_inserido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dado_inseridos/1
  # DELETE /dado_inseridos/1.json
  def destroy
    @dado_inserido.destroy
    respond_to do |format|
      format.html { redirect_to dado_inseridos_url, notice: 'Dado inserido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dado_inserido
      @dado_inserido = DadoInserido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dado_inserido_params
      params.require(:dado_inserido).permit(:id_fila, :posicao, :horario)
    end
end
