class Product < ApplicationRecord
  has_many :store
 
  validates :name, :price, presence: true
end
