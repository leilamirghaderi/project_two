class SessionsController < ApplicationController
  protect_from_forgery except: :create
  def create
    # @provider_hash = request.env['omniauth.auth'].to_json
      omni = request.env['omniauth.auth']
      @student = Student.find_or_create_by(uid: omni['uid']) do |student|
        student.firstname = omni['info']['name']
        student.nickname = omni['info']['nickname']
        student.email = omni['info']['email']
      end
      self.current_user = @student
      origin = request.env['omniauth.origin'] || '/reflections'
      redirect_to origin.include?('log') ? reflections_url : origin
  end
  def login
  end
  def logout
    reset_session
    redirect_to login_url, notice: "You have been logged out."
  end
end
