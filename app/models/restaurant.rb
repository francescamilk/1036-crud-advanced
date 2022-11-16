class Restaurant < ApplicationRecord
  validates :name, :address, :rating, presence: true
  validates :name, uniqueness: true

  def capitalize_name
    @name = @name.capitalize
  end
end
