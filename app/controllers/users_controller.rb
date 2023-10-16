class UsersController < ApplicationController
 
  def create
    @user = User.new(username: params[:username], email: params[:email], password: params[:password]) #grabbed params from form

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def new

  end

end