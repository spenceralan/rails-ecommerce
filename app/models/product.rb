class Product < ApplicationRecord
  has_many :order_items

  validates :name, :description, presence: true

  validates :price,
    presence: true,
    numericality: {
      greater_than: 0
    }
end
