class AdminController < ApplicationController

def index
end
def login
end
def login2
if (Admin.find_by(email: params[:email]))
  	if(Admin.find_by(email: params[:email]).password==params[:password])
  		session[:admin_id]= Admin.find_by(email: params[:email]).id
  		  		session[:admin_username]= Admin.find_by(email: params[:email]).email
  		  		redirect_to adminindex_path
  	end
  	else
  		return "error"
  	end
end
def newblog
	@blog = Blog.new
end
def createblog
blog=Blog.create(title: params[:blog][:title], metakey: params[:blog][:metakey],metadesc: params[:blog][:metadesc], content: params[:blog]['content'])
blog.avatar.attach(params[:blog][:avatar])
redirect_to adminindex_path
end
end
