class TableController < ApplicationController
  def index
  	@timelines = Timeline.order(:title)
  end
end
