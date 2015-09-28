class HomeController < ApplicationController
  
  def index
  	if user_signed_in?
  		render 'home'
  	else
  		render 'front'
  	end
  end

end
