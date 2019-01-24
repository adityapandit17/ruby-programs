# # frozen_string_literal: true

# require_relative 'buyer'
# require_relative 'product'

# # order class
# class Order
#   @orders = []
#   def initialize(buyer, product)
#     @buyer = buyer
#     @product = product
#     @time = Time.now
#   end

#   def self.all_orders
#     @orders
#   end

#   def self.all
#     Order.all_orders
#   end
# end

# # order_info.each do |order|
# #   buyer = Buyer.search_first_name(order[:buyer])
# #   product = Product.search_product(order[:product], order[:category])
# #   Order.orders << Order.new(buyer, product)
# # end

# Order.all.inspect
