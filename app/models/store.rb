class Store < ApplicationRecord
  has_many :product

  validates :name, :address, presence: true
end
