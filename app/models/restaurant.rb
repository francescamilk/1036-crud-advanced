class Restaurant < ApplicationRecord
  validates :name, :address, :rating, presence: true
  validates :name, uniqueness: true
end
