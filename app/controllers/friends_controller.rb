class FriendsController < ApplicationController
  def index
    @friends = ["Ruby","Python","Java","Php","YAML","Sarah", "Paul", "Pierre"]
  end
end
