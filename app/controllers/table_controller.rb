#coding: utf-8
class TableController < ApplicationController
  def index

  	@timelines = if params[:title].presence 
      Timeline.where('title LIKE ?', "%#{params[:title]}%").paginate(page: params[:page],per_page: 5)
    else
      Timeline.paginate(page: params[:page], per_page: 5)
    end
  	@timeline = Timeline.new

  end

end
