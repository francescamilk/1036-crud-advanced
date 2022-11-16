class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, inclusion: { in: (1..5), message: "1 to 5" }

  belongs_to :restaurant
  # @review.restaurant
end
