class UsersController < ApplicationController
  # your code goes here

  # endpoint GET /users
  def index
    @users = User.all
  end
  # endpoint GET /users/:id
  def show
    @user = User.find(params[:id])
  end
  # endpoint GET /users/new
  def new
    @user = User.new
  end
  # endpoint POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
  # endpoint GET /users/:id/edit
  def edit
    @user = User.find(params[:id])
  end 
  # endpoint PATCH/PUT /users/:id
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end
  # endpoint DELETE /users/:id
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :address)
  end
end
