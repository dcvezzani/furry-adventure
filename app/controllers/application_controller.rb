class ApplicationController < ActionController::Base
  include Cms::Authentication::Controller

  protect_from_forgery

  #before_filter :authenticate_user!, except: [:sign_in, :sign_out]
end
