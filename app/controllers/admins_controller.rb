class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
  end

  def check_box
  end

  # GET /admins/1
  # GET /admins/1.json
  #show Admin of id 
  #talvez eu mude para procurar por login
  def show
    @admin = Admin.find(params[:id])
  end

  def confirm
    @admin = Admin.new(id: cookies[:id], login: cookies[:login],senha: cookies[:senha],nome: cookies[:nome], email: cookies[:email] )
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
            format.json { render :confirm, status: :created, location: @admin }
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

  def createWCookies
    #cria lista com todos os logins já cadastrados
    

      @admin = Admin.new(id: cookies[:id],login: cookies[:login],senha: cookies[:senha],nome: cookies[:nome],email: cookies[:email] )
      @admin.save
      flash[:error] = "adm adicionado com sucesso"
      #respond_to do |format|
      #  format.html { render :new, notice: 'Admin was successfully created. Now you can add another Admin' }
      
      redirect_to new_admin_path
        #format.json { render :confirm, status: :created, location: @admin }
      #end
      #respond_to do |format|
       # if @admin.save
        #    #if not Admin.login.include?(@admin.login)
         #   format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
          #  format.json { render :confirm, status: :created, location: @admin }
            #else
            #format.html { render :new, notice: 'Login não único'}
            #format.json { render json: @admin.errors, status: :unprocessable_entity }
            #end
        #else
         # format.html { render :edit, notice: 'Admin was not validated.'}
          #format.json { render json: @admin.errors, status: :unprocessable_entity }
        #end
      #end
    
  end

  def createCookie
    #cria lista com todos os logins já cadastrados
    

      @admin = Admin.new(admin_params)
      id_index = []
      Admin.all.each do |f|
        id_index.append(f.id)
      end
      geraId = true
      idGerado = 0
      while geraId do
        if id_index.include?(idGerado)
          idGerado = idGerado + 1
        else
        geraId = false
      end
      end    



      cookies[:id] = idGerado
      cookies[:login] = admin_params[:login]
      cookies[:senha] = admin_params[:senha]
      cookies[:senha_confirmation] = admin_params[:senha_confirmation]
      cookies[:nome] = admin_params[:nome]
      cookies[:email] = admin_params[:email]
      logins = []
      Admin.all.each do |f|
        logins.append(f.login)
      end

      respond_to do |format|
        #se login considerado válido
        if (not logins.include?(cookies[:login])) and (cookies[:senha] == cookies[:senha_confirmation])
            
            format.html { render :confirm, notice: 'Confirm your entrie.' }
            #format.json { render :show, status: :created, location: @admin }
            #else
            #format.html { render :new, notice: 'Login não único'}
            #format.json { render json: @admin.errors, status: :unprocessable_entity }
            #end
        else
        #pede reinserção dos dados  
           format.html { render :new, notice: 'This`s not going to go.' }
           format.json { render json: @admin.errors, status: :unprocessable_entity }
           s = ""
           if (logins.include?(cookies[:login]))
            s = s +  "Login não é único <br>"
           end 
           if((cookies[:senha] != cookies[:senha_confirmation]))
            s = s + "Senhas não batem"
           end 
           flash[:error] =  s
            
          #render(
          #html: "<script>alert('No users!')</script>".html_safe,
          #layout: 'application'
          # )

    #  end      

          #format.html { render :createCookie, notice: 'Admin was not validated.'}
          format.json { render json: @admin.errors, status: :unprocessable_entity }
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
  def delete_multiple
    params[:admin_ids].each do |f|
      Admin.find(f).delete
    
    end
    flash[:error] = "Adms deletados com sucesso"
    redirect_to :action => 'index'
  end

  def select_multiple
    @admins = Admin.find(params[:admin_ids])
  end
  def validation
    if(params[:senha] == cookies[:senha])
      delete_multiple
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:login, :senha, :senha_confirmation, :nome, :email, :admin_ids)
    end
end
