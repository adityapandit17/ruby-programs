# frozen_string_literal: true

# user class
class User
  @users = []
  attr_accessor :username, :email, :contact
  def initialize(username, email, contact)
    @username = username
    @email = email
    @contact = contact
  end

  def self.create(username,email,contact)
    @users << User.new(username,email,contact)
  end

  def all
    @users
  end

  def to_s
    [username, email, contact].join(' ')
  end

  def find_by_username(username)
    all.select { |users| users.name? username }
  end
end
