class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:info] = t(:logged_in_as) + "#{@user.name}" # "logged in as #{@user.name} としてログインされています。" #  
      redirect_to @user
    else
      flash[:danger] = t(:login_error) 
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end