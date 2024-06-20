class PagesController < ApplicationController
    def contact
        @time = Time.now
    end
    
    def test
        @time = Time.now
    end

    def home
        # render('pages/homepage')
        render 'homepage'
    end

    def bonus
        redirect_to(:controller =>'pages', :action =>'contact')
    end

    def login 
        # redirect_to(:action =>'home')
        # redirect_to(:controller =>'contacts', :action =>'index')
        redirect_to(:controller =>'pages', :action =>'home')
    end
end