 class SessionsController < ApplicationController
    
   def new 
        if current_user
            flash[:error] = "You're already logged in"
            redirect_to root_path
        end
    end
     
     def create 
         
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
         session[:user_id] = user.id
         redirect_to programs_path, notice: "logged in!"
        else
         flash.now.alert = "invalid login credentials"
         render "new"
        end
     end
     

     def destroy
        session[:user_id] = nil
        redirect_to root_url, notice: "logged out!"
     end


end