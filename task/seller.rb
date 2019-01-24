# frozen_string_literal: true

require_relative 'user'

# Seller class
class Seller < User
  @users = []
  def self.all_seller
    all.select(&:seller?)
  end
end
