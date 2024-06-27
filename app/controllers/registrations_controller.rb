class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save   
          flash[:notice] = 'Inscription réussi!'   
          redirect_to root_path   
        else   
          flash[:error] = 'Échec de la modification de l\'utilisateur !'   
          render :new   
        end  
    end
    # private

    def user_params
      params.require(:user).permit(:prenom, :nom, :email, :password, :password_confirmation)
    end

end
  