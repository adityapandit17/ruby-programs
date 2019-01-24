# frozen_string_literal: true

require_relative 'product_data'

# product class
class Product
  @products = []
  attr_accessor :name, :price, :category

  def initialize(hsh)
    hsh.each { |k, v| public_send("#{k}=", v) }
  end

  def self.all_product
    @products
  end

  def self.all
    Product.all_product
  end

  def self.create(products_array)
    products_array.each do |product_hash|
      Product.all_product << Product.new(product_hash)
    end
  end

  def to_s
    [name, price, category].join(' ')
  end
end
