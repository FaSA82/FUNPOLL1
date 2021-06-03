class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    
    # p create_params

    debugger

    @user = User.new(create_params)
    if @user.save
      redirect_to @user
    
    else 
      render new
    end
  end

  private
    def create_params
      params
        .require(:user)
        .permit(:email, :username, :password, :password_confirmation)
    end

end


