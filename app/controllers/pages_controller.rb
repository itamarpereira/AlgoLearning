class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :dashboard ]
  
  def home
  end

  def about
  end   
end
