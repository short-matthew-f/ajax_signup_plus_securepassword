class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )

    respond_to do |format|
      if @user.save
        format.json { render json: @user }
        format.html { redirect_to user_url(@user) }
      else
        render :new
      end
    end
  end

  def show
    @user = User.find( params[:id] )

    respond_to do |format|
      format.html { render text: "I'm in the html part of the show method for user with id " + params[:id] }
      format.json { render json: @user }
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
