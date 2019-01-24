# frozen_string_literal: true

# class UserQuestionAnswer
class UserQuestionAnswer
  @@user_answers = []
  attr_accessor :username, :quiz_choice, :question, :choice, :is_right,
  def initialize(username, quiz_choice, question, choice, is_right)
    @username = username
    @quiz_name = quiz_name
    @question = question
    @choice = choice
    @is_right = is_right
  end

  def self.all
    @@users
  end
  
  # def answer_by_username(username)
  #   all.select { |answer| answer.username.eql? username }
  # end

  def self.create(username, quiz_choice, question, choice, is_right)
    @@user_answers << UserQuestionAnswer.new(username, quiz_choice, question, choice, is_right)
  end
end
