class ApplicationController < ActionController::Base

    helper_method :logged_in?
    helper_method :create_user
    helper_method :require_login
    #now the views can use the helper methods

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        session[:user_id] ? true : false
      end

    def require_login
        redirect_to login_path unless session[:user_id]
    end
end
