class ApplicationController < ActionController::Base
  helper_method :current_user
<<<<<<< HEAD
<<<<<<< HEAD
  private
  # Getter method for current User
    # Getter method for current user
    def current_user
      @current_user ||= Student.find_by(uid: session[:uid])
    end
    # Setter method for current user
    def current_user=(student)
      session[:uid] = student.uid
      session[:name] = student.name
    end

    def user_signed_in?
      !!current_user
    end

    def authenticate_user
      unless user_signed_in?
        redirect_to login_url, notice: "Please log in first"
      end
    end

  end
