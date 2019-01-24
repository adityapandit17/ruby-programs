# frozen_string_literal: true

# class Quiz
class Quiz
  attr_accessor :name, :username
  def initialize(name, username)
    @name = name
    @username = username
  end

  def self.create(name,username)
    Quiz.new(name,username)
  end
end
