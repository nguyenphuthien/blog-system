class SessionsController < ApplicationController
  def new
  end

  def create

   user = User.find_by(email: params[:session][:email].downcase)
   if user.password == params[:session][:password]
    log_in user
    redirect_to user

   else
    flash[:danger] = 'Invalid email/password combination' # Not quite right!
    render 'new'
   end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def log_in(user)
    session[:user_id] = user.id
  end
end
