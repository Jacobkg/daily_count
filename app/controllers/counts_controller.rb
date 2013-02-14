class CountsController < ApplicationController

  def index
  end

  def create
    count = Count.new
    count.record_date = Date.today
    count.save!
    redirect_to :action => 'index'
  end

end