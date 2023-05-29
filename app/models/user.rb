class User < ApplicationRecord
  has_many :bike
  has_many :booking
  validates :name, presence: true
end
