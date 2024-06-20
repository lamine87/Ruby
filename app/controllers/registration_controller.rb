class RegistrationsController < ApplicationController
    def new
        @users = Users.new
        # render(:template => 'registrations/new')
    end

    def create
        @users = Users.new(user_params)
        if @users.save
          redirect_to @users, notice: 'Registration successful.'
        else
          render :new
        end
    end

    private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

    
end