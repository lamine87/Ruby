class LanguagesController < ApplicationController
  def index
    @languages = ['Java', 'Ruby', 'C++','C','Go']
  end
end
