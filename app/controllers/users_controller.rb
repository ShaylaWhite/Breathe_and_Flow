class UsersController < ApplicationController

  
   def new
   end
 
   def create
     @user = User.new(user_params)
     if @user.valid? 
       @user.save
       session[:user_id] = @user.id
       redirect_to user_path(@user)
     else
       render :new
     end
   end
 
   def show
     #find_by_id 
     @user = User.find_by_id(id: params[:id]) 
     redirect_to '/' if !@user
   end
 
   private
 
   def user_params
     params.require(:user).permit(:username, :email, :password)
   end
 end