class ApplicationController < ActionController::Base
  protect_from_forgery
  alias_method :current_user, :current_owner
  before_filter :basic_authenticate#, :set_locale
    def basic_authenticate
    authenticate_or_request_with_http_basic do |user, password|
      (user == "ctt" && password == "ctt")
    end
  end
end
