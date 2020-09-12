class GroupsController < ApplicationController
   before_action :require_login

   def new
      @group = Group.new
   end


   def create
      @group = current_user.groups.build(group_params)
      if @group.save
        redirect_to groupss_path
      else
        render :new
      end
    end
  

private

   def group_params
      params.require(:group).permit(:name, :description, :time)
   end 
end
