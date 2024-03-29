class ApplicationController < ActionController::Base
  helper_method :current_user

       rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_path, alert: "You cannot access this page"
      end

      def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      end

      def logged_in?
        !!current_user
      end

      private
      def authenticate
        unless logged_in?
          flash[:error] = "You must be logged in to access this section of the site"
          redirect_to login_url
        end
      end
      
end



 

