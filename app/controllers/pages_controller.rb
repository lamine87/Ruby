class PagesController < ApplicationController
    def contact
        @time = Time.now
    end
    
    def test
        @time = Time.now
    end

    def home
        @user = User.all
        flash[:notice] ="Connecté avec succès"
        flash[:notice] = "Email ou mot de passe invalide"
    end

    def bonus
        redirect_to(:controller =>'pages', :action =>'contact')
    end

    def login 
        redirect_to(:controller =>'pages', :action =>'home')
    end
    def about
        @time = Time.now
        render(:template => 'pages/about')
    end
    def terms
        @time = Time.now
        render(:template => 'pages/terms')
    end

end