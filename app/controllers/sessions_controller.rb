class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  
  def create
      user = User.authenticate(params[:session][:email],
                               params[:session][:password])
      if user.nil?
        flash.now[:error] = "Invalid email/password combination."
        @title = "Sign in"
        render 'new'
      else
        sign_in user
        
        if session[:return_to].nil?
        flash[:success] = "Logged in, Welcome to your Dashboard"
        redirect_to user
      else
        flash[:success] = "Logged in"
        redirect_back_or user
      end
    end
    end
  
  def destroy
    sign_out
    flash[:success] = "Logged out"
    redirect_to root_path
  end
  
end
