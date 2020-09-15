class ReviewsController < ApplicationController
    before_action :require_login

   

    def new
      if @Group= Group.find_by_id(params[:group_id])
          @review = @group.reviews.build
        else
          @review = Review.new
        end
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
      @review = Review.find_by(id: paramas[:id]) 
    end 

  def index
      if params[:group_id] && @group = Group.find_by_id(params[:group_id])
         @reviews = @group.reviews
      else
        @reviews = Review.all
      end
    end

    private

    def review_params
      params.require(:review).permit(:review,:review_id)
    end
   end