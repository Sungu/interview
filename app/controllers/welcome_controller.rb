class WelcomeController < ApplicationController
  def first_page
    render :layout => false
  end
end
