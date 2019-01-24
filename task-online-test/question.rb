# frozen_string_literal: true

# class Question
class Question
  @questions = []
  attr_accessor :quiz_name, :question, :question_id
  def initialize(hsh)
    hsh.each { |k, v| public_send("#{k}=", v) }
  end

  def self.all_questions
    @questions
  end

  def self.all
    Question.all_questions
  end

  def self.create(question_array)
    question_array.each do |question_hash|
      Question.all_questions << Question.new(question_hash)
    end
  end
end
