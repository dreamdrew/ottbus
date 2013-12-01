class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :format_for_iphone

  def format_for_iphone
	if request.env["HTTP_USER_AGENT"] and request.env["HTTP_USER_AGENT"][/(Mobile\/.+Safari)/]
	  request.format = :iphone
	end
  end
end
