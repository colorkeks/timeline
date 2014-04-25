#coding: utf-8
class TimePoint < ActiveRecord::Base
	belongs_to :timeline

	validates :title, :high_threshold, :importance, :timeline_id, presence: true

end
