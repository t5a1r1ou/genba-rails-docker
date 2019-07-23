class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :login_requierd

  private

  def current_user
    @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def login_requierd
    redirect_to login_url unless current_user
  end
end
