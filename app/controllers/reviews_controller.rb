class ReviewsController < ApplicationController
    before_action :require_login

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
 
 private
 
    def review_params
       params.require(:review).permit(:name, :description, :time)
    end 
end
