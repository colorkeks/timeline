class TableController < ApplicationController
  def index
  	@timelines = Timeline.order(:title)
  	@timeline = Timeline.new
  end

end
