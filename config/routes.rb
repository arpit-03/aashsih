Rails.application.routes.draw do
  
  get 'user/index'
  get 'blog/index'
   namespace :api do
  
    namespace :v1 do
    	post 'lead/savecontactus', to: 'lead#savecontactus', as: 'api1'
    end
end
get 'home/index'
root 'home#index'
get 'admin/index' , to: 'admin#index', as: 'adminindex' 
get 'admin/login', to: 'admin#login', as: 'adminlogin'
get 'admin/newblog'
get 'blog/index/:id',to: 'blog#index', as: 'blogindex'
get 'user/login'
get 'user/signup'
get 'admin/view'
get 'admin/viewlead'
get 'admin/viewfullleadinfo/:id' , to: 'admin#viewfullleadinfo', as:'fullleadinfo'
get 'admin/viewallblog'
get 'admin/deleteblog'
get 'admin/logout'
get 'admin/updateblog/:id' ,to: 'admin#updateblog',as: 'update'
patch 'admin/updateblog2/:id', to: 'admin#updateblog2',as: 'update2'
get 'admin/viewupdateblog', to: 'admin#viewupdateblog', as: 'update3'
post 'admin/deleteblog2' , to: 'admin#deleteblog2', as:'deleteblog2'
post 'admin/login2', to: 'admin#login2', as: 'admin'
post 'admin/createblog', to: 'admin#createblog', as:'createblog'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
