class SessionsController < ApplicationController
  def new
  end
  def create
    admin = Admin.find_by(login: params[:session][:login].downcase)
    if admin && admin.senha == (params[:session][:password])
    	log_in admin
    	redirect_to admins
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      render 'new'

  end

  def destroy
  end

end
