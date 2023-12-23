class Product < ApplicationRecord
  validates :title, :description, :image_url, presence :
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
