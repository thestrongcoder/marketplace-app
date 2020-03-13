class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :brand
  belongs_to :category
  has_one :order
  has_one_attached :picture

  # create product
  def self.create_product(name, brand, category, description, picture, price, condition)
      product = Product.new(name: name, brand: brand.id, category: category.id, condition: condition, description: description, price: price)
      product.picture.attach(picture)
      product.save
    return product
  end


end
