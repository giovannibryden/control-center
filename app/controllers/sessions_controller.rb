class SessionsController < ApplicationController

include SessionsHelper
  
  def new
    if logged_in?
      redirect_to "/dashboard"
    end
  end

  def create
  	user = User.find_by_email(params[:session][:email].downcase)

  	# Check to see if user exists AND that they can authenticate with the password
  	if user && user.authenticate(params[:session][:password])
  		flash[:success] = "Whoa. It worked!"
  		log_in user
      remember user
      redirect_to "/dashboard"
  	else
  		flash[:notice] = "Something's wrong!"
      render 'new'
  	end
  end	

  def success
    @email = params[:session][:email]
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end

end
