class HomeController < ApplicationController
  def index
  	@blog= Blog.limit(6)
  end
end
