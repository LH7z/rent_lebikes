class User < ApplicationRecord
  has_many :bike
  has_many :booking
end
