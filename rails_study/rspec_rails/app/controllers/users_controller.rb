class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path #seria redirecionado para o index
  end

  private

    def user_params
      #recebe e filtra os parametros recebidos
      params.require(:user).permit(:nickname, :kind, :level)
    end
end
