class ReviewsController < ApplicationController
    before_action :require_login

    def index
      if params[:group_id] && @group = Group.find_by_id(params[:group_id])
         @groups = @group.reviews
      else
        @reviews = Reviews.all
      end
    end

    def new
       @review = Review.new
    end
 
 
    def create
       @review = current_user.reviews.build(review_params)
       if @review.save
          redirect_to reviews_path
       else
          render :new
       end 
    end 

    def show 
      @review = Review.find_by(id: parmas[:id]) 
    end 
 
 private
 
    def review_params
       params.require(:review).permit(:name, :description, :time)
    end 
end
