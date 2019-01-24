# frozen_string_literal: true

require_relative 'order_data'

# order class
class Order
  @orders = []
  attr_accessor :product_name, :seller, :buyer, :amount, :order_date

  def initialize(hsh)
    hsh.each { |k, v| public_send("#{k}=", v) }
  end

  def self.all_orders
    @orders
  end

  def self.all
    Order.all_orders
  end

  def self.create(orders_array)
    orders_array.each do |order_hash|
      Order.all_orders << Order.new(order_hash)
    end
  end

  def to_s
    [product_name, seller, buyer, amount, order_date].join(' ')
  end
end
