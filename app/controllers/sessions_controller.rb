class SessionsController < ApplicationController

  def new
  end

  def create
    admin = Admin.find_by(login: params[:session][:login])
    if admin && admin.senha == params[:session][:senha]
      # Log the user in and redirect to the user's show page.
      log_in admin
      redirect_to admins_path
    else
      # Create an error message.
      flash.now[:danger] = 'Admin ou senha inválidos. Verifique e tente novamente!' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end


end

