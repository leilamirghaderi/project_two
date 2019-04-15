class ApplicationController < ActionController::Base
  helper_method :current_user
<<<<<<< HEAD
  private
  # Getter method for current User
  def current_user
    @current_user ||=Student.find_by(uid: session[:uid])
  end
  # Setter method for curent user
  def current_user=(student)
    session[:uid]=student.uid
    session[:name]=student.name
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
=======

    private
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
>>>>>>> 2a16fa4d797491261f2057a1d0c8d90d8766b994
