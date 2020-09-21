module Api 
	module V1 
        class LeadController< ApplicationController 
            skip_before_action :verify_authenticity_token
            def savecontactus
            	name= params[:name]
            	email=params[:email]
            	mobile=params[:mobile]
            	query=params[:query]
            	 if(name!="" && email!="" && mobile!="")
            	 	Lead.create(name: name, email: email, mobile: mobile, query: query)
            	 render json: {status:"success" }
            	 else
            	 	render json: {status: "error", code: 400 , message: "Basic information not available" }
            	 end
            end
        end
    end
end