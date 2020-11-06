class User < ApplicationRecord
  
  has_many :participations
  has_many :events, through: :participations
  has_many :events_administrator, foreign_key: "administrator_id", class_name: "Event"
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
