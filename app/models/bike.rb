class Bike < ApplicationRecord
  belongs_to :user
  has_many :booking, dependent: :destroy
end
