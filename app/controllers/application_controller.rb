class ApplicationController < ActionController::Base
  protect_from_forgery

  if Rails.env.production?
    http_basic_authenticate_with :name => ENV['USERNAME'], :password => ENV['PASSWORD']
  end

  def mixpanel
    @mixpanel ||= Mixpanel::Tracker.new "09c7d977aaf4cff6491ea764ac87a0b3", { :env => request.env }
  end
end
