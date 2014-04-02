class Timeline < ActiveRecord::Base
	has_many :time_items, dependent: :destroy
	has_many :time_points, dependent: :destroy


	validates :title, presence: true
	validates :title, uniqueness: true

	def all_items
		self.time_items + self.time_points
	end
end
