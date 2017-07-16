class Product < ApplicationRecord
  has_many :order_items

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, :description, presence: true

  validates :price,
    presence: true,
    numericality: {
      greater_than: 0
    }
end
