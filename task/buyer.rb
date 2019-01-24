# frozen_string_literal: true

require_relative 'user'

# Buyer class
class Buyer < User
  @users = []
  def self.all_buyer
    all.select(&:buyer?)
  end
end
