class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :authorized_access!, only: [:edit, :update]

  def edit
  end

def index
  @users = User.all
end

def update
  if @user.update(user_params)
    redirect_to @user
  else
     # unvalidated
    render 'edit'
  end
end

def show # 追加
  @user = User.find(params[:id])
end
  
def new
  @user = User.new
end

def create
  @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
end

private
  
def set_user
  @user = User.find(params[:id])
end  
  
def user_params
  params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :region, :phone_number, :screen_name)
end
  
def authorized_access!
  if @user != current_user
      redirect_to root_path, alert: 'Unauthorized access!'
  end
end

end