#coding: utf-8
class TimePoint < ActiveRecord::Base
	belongs_to :timeline

	validates :title, :high_threshold, :importance, :timeline_id, presence: true
    validates :high_threshold, allow_blank: true, format: {
		with: %r{([1-9]|[1-9]\d|50)},
		message: 'от 1 до 50'
	}
	validates :importance, allow_blank: true, format: {
		with: %r{([1-9]|[1-9]\d|50)},
		message: 'от 1 до 50'
	}
end
