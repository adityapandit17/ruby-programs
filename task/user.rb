# frozen_string_literal: true

require_relative 'user_data'

# user class
class User
  @users = []
  attr_accessor :first_name, :last_name, :date_of_birth, :address, :role
  def initialize(hsh)
    hsh.each { |k, v| public_send("#{k}=", v) }
  end

  def self.all_users
    @users
  end

  def full_name
    [first_name, last_name].join(' ')
  end

  def self.all
    User.all_users
  end

  def self.create(users_array)
    users_array.each do |user_hash|
      User.all_users << User.new(user_hash)
    end
  end

  def to_s
    [first_name, last_name, date_of_birth, address, role].join(' ')
  end

  def age
    dob = date_of_birth.split('-').last.to_i
    now = Time.now.year
    now - dob
  end

  def first_name?(name)
    first_name.eql? name
  end

  def seller?
    role.eql? 'seller'
  end

  def buyer?
    role.eql? 'buyer'
  end

  def self.find_by_first_name(name)
    all.select { |user| user.first_name?(name) }
  end
end
