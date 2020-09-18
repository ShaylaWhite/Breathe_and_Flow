class ApplicationController < ActionController::Base

    helper_method :logged_in?
    helper_method :current_user
    helper_method :require_login
    #how the views can use the helper methods


    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
      end
    
      def logged_in?
        !!current_user
      end
    
      def require_login
        redirect_to login_path unless logged_in?
      end  
    end
