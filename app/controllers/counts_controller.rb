class CountsController < ApplicationController

  def index
  end

  def create
    count = Count.new
    count.record_date = Date.today
    count.save!

    if Rails.env.production?
      mixpanel.track 'Activity Recorded', {}
    end

    redirect_to :action => 'index'
  end

end