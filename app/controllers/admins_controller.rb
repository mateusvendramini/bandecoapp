class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
  end

  # GET /admins/1
  # GET /admins/1.json
  #show Admin of id 
  #talvez eu mude para procurar por login
  def show
    @admin = Admin.find(params[:id])
  end

  def confirm
    @admin = Admin.new(cookies[:login],cookies[:senha], cookies[:nome] )
  end
  # GET /admins/new
  def new
    @admin = Admin.new

  end

  # GET /admins/1/edit
  def edit
    @admin = Admin.find(params[:id])
  end

  # POST /admins
  # POST /admins.json
  def create
    #cria lista com todos os logins já cadastrados
    

      @admin = Admin.new(admin_params)

      respond_to do |format|
        if @admin.save
            #if not Admin.login.include?(@admin.login)
            format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
            format.json { render :show, status: :created, location: @admin }
            #else
            #format.html { render :new, notice: 'Login não único'}
            #format.json { render json: @admin.errors, status: :unprocessable_entity }
            #end
        else
          format.html { render :edit, notice: 'Admin was not validated.'}
          #format.json { render json: @admin.errors, status: :unprocessable_entity }
        end
      end
    
  end

  def createCookie
    #cria lista com todos os logins já cadastrados
    

      @admin = Admin.new(admin_params)
      cookies[:login] = admin.login 
      cookies[:senha] = admin.senha
      cookies[:senha_validation] = admin.senha_validation
      cookies[:nome] = nome
      logins = []
      Admin.all.each do |f|
        logins.append(f.login)
      end

      respond_to do |format|
        if (not logins.include?.cookies[:login]) and cookies[:senha] = cookies[:senha_validation]
            #if not Admin.login.include?(@admin.login)
            format.html { redirect_to @admin, notice: 'Admin is valid successfully created.' }
            format.json { render :show, status: :created, location: @admin }
            #else
            #format.html { render :new, notice: 'Login não único'}
            #format.json { render json: @admin.errors, status: :unprocessable_entity }
            #end
        else
          format.html { render :edit, notice: 'Admin was not validated.'}
          #format.json { render json: @admin.errors, status: :unprocessable_entity }
        end
      end
    
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        #format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete
    Admin.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:login, :senha, :nome)
    end
end
