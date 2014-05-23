class UsersController < ApplicationController

  def index
    @users = User.all
  end

 
  def show
    @user = User.find(params[:id])  
  end

  
  def new
    @user = User.new  
  end

 
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
    @user.update_attributes(params[:user])

    puts "redirecting"

    case @user.role
    when "instructor"
      redirect_to new_teaching_assignment_path
    else
      redirect_to @user
    end
    
  end

  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

end
