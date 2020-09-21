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
post 'admin/login2', to: 'admin#login2', as: 'admin'
post 'admin/createblog', to: 'admin#createblog', as:'createblog'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
