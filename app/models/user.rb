class User < ApplicationRecord
  
  has_many :participations
  has_many :events, through: :participations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
