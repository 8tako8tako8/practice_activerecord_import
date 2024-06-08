class Product < ApplicationRecord
  validates :name, length: { maximum: 1 }
end
