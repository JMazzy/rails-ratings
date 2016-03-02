class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )
    if @user.save
      #success
      redirect_to user_path(@user)
    else
      #failure
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update( user_params )
      #success
      redirect_to user_path(@user)
    else
      #failure
      redirect_to edit_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      #success
      redirect_to root_path
    else
      #failure
      redirect_to user_path(@user.id)
    end
  end

  private

  def user_params
    params.require( :user ).permit( :first_name, :last_name, :user_name, :email, :password )
  end

end
