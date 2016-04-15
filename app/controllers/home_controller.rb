class HomeController < ApplicationController
  def index
    @post = Post.all
  end
  
  def show_lib
    @libs = Lib.all
  end
end
