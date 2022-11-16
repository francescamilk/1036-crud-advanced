class Restaurant < ApplicationRecord
  validates :name, :address, :rating, presence: true
  validates :name, uniqueness: true

  has_many :reviews
  # @restaurant.reviews

  def compute_rating
    rating = @restaurant.reviews.map { |review| review.rating }
    @rating = reviews.sum / reviews.count
  end
end

# @my_restaurant.compute_rating
