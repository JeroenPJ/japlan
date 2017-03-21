class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :redirect

  def redirect
    redirect_to "http://japlanblog.wordpress.com/"
  end
end
