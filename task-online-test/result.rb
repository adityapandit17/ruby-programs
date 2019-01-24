# frozen_string_literal: true

# result class
class UserResult
  @results = []
  attr_accessor :username, :quiz_name, :score, :quiz_date
  def initialize(username, quiz_name, score, quiz_date)
    @username = username
    @quiz_name = quiz_name
    @score = score
    @quiz_date = quiz_date
  end

  def self.all_results
    @results
  end

  def self.all
    UserResult.all_results
  end

  def self.result_by_username(uname)
    all.select { |user| user.username.eql?(uname) }
  end
end
