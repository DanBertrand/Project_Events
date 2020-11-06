class Event < ApplicationRecord
	belongs_to :administrator, class_name: "User"
	has_many :participations
	has_many :users, through: :participations
end
