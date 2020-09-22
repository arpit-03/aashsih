class HomeController < ApplicationController
  def index
  	@blog= Blog.limit(6)
  	@home= true
  end
end
