class Token < ApplicationRecord
  validates :name, uniqueness: true
end
