# frozen_string_literal: true

require_relative 'user'
require_relative 'product'
require_relative 'seller'
require_relative 'buyer'
require_relative 'order'
products_array = @product_data
users_array = @user_data
orders_array = @order_data

puts '=' * 76
puts 'Take the list of all the users and return array of user objects'
puts 'correspond to the list'
puts User.create(users_array)
puts
puts '=' * 76
puts 'Take the list of all the products and return array of product objects'
puts 'correspond to the given list'
puts Product.create(products_array)
puts
puts '=' * 76
puts 'Write method to get the full name of buyer/seller'
puts User.all.first.full_name
puts
puts '=' * 76
puts 'Write method to find the age of buyer/seller on the basis'
puts 'of his date_of_birth'
puts User.all.first.age
puts
puts '=' * 76
puts 'Write a method in Buyer class, which will take all the'
puts 'users list as input'
puts 'and return buyers only'
puts Buyer.all_buyer
puts
puts '=' * 76
puts 'Write a method in Seller class, which will take all'
puts 'the users list as input'
puts 'and return sellers only'
puts Seller.all_seller
puts
puts '=' * 76
puts 'Find all the users, whose first name is alex'
puts User.find_by_first_name('alex')
puts
puts 'find all orders'
puts Order.create(orders_array)
# User.create(users_array)
# Product.create(products_array)
# User.all.first.full_name
# User.all.first.age
# Buyer.all_buyer
# Seller.all_seller
# User.find_by_first_name("alex")
