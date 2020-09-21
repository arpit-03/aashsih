class BlogController < ApplicationController
  def index
  	id=params[:id]
  	@blog=Blog.find(id)
  end
end
