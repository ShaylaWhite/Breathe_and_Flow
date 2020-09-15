class GroupsController < ApplicationController
   before_action :require_login
   before_action :set_group, only: [:edit, :update, :show, :destroy]
   

   def index
      @groups = Group.all
   end

   
   def new
       @group = Group.new     
       @group.build_type
   end

   def create 
       @group = Group.new(group_params)
       @group.user_id = session[:user_id]
           if @group.save
               redirect_to group_path(@group)
           else
               render :new
           end
   end

   def show
       @comments = @group.comments
   end

   def edit
       if session[:user_id] != @group.user_id
           redirect_to user_path(session[:user_id])
       end 
   end

   def update
           if @group.update(group_params)
               redirect_to groups_path
           else
               render :edit
           end
   end

   def destroy 
       if current_user_check != @group.user_id
           redirect_to user_path(session[:user_id])
       else 
           @group.destroy
           redirect_to groups_path
       end
   end

   private


   def group_params
       params.require(:group).permit(:title, :description, :time, :difficulty, category_attributes: [:name])
   end

   def set_group
       @group = group.find_by(id: params[:id])
   end


end