class AdminController < ApplicationController
before_action :authorize_admin , except:[:login,:login2]
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

def viewlead
@lead=Lead.all.order('id desc')
end
def viewfullleadinfo
@info= Lead.find(params[:id])
end
def viewallblog
@blog=Blog.all
end
def deleteblog
	end
	def deleteblog2
		Blog.find(params[:id]).delete
		redirect_to adminindex_path
	end

	def authorize_admin
if(!session[:admin_id])
  redirect_to adminlogin_path
end
  end
  def logout
  session.delete(:admin_id)
  redirect_to root_path
  end
  
  def updateblog
  @blog= Blog.find(params[:id])
  end
  def updateblog2
Blog.find(params[:id]).update(title: params[:blog][:title], content: params[:blog]['content'])
  redirect_to adminindex_path
  end
  def viewupdateblog
@blog= Blog.all
  end
end
