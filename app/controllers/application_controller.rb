class ApplicationController < ActionController::Base
  protect_from_forgery

  if Rails.env.production?
    http_basic_authenticate_with :name => ENV['USERNAME'], :password => ENV['PASSWORD']
  end
end
