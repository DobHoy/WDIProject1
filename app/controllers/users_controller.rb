class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    
  end

 
  def show
    @user = User.find(params[:id])

    
  end

  
  def new
    @user = User.new

    
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end


  def create
    
    @user = User.new(params[:user])
    # Default to student, role reassigned by producer later
    @user.role = "student" 



       if @user.save
       redirect_to users_path
      else
       render 'new'
      end
      
  end

  
  def update
 
    @user = User.find(params[:id])

    @user.save
   redirect_to users_path
   
    
  end

  
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    
  end
end
