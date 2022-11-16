class Restaurant < ApplicationRecord
  validates :name, :address, :rating, presence: true
  validates :name, uniqueness: true

  has_many :reviews
  # @restaurant.reviews

  # def capitalize_name
  #   @name = @name.capitalize
  # end
end
