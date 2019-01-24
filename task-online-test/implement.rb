# frozen_string_literal: true

require 'pry'
require_relative 'data'
require_relative 'user'
require_relative 'quiz'
require_relative 'question'
require_relative 'question_choice'
require_relative 'user_question_answer'

@correct_choice_id = nil
@score = 0

def correct(answer)
  @score += 1 if @correct_choice_id == answer
end

question_array = @questions_data
question_choices = @choice_data
Question.create(question_array).shuffle
QuestionChoice.create(question_choices).shuffle
all_choices = QuestionChoice.all.shuffle
all_questions = Question.all.shuffle
all_questions.each do |question|
  puts question.question
  choices = all_choices.select { |c| c.question_id == question.question_id }
  choices.each_with_index do |choice, index|
    puts "#{index + 1}. #{choice.choice}"
    @correct_choice_id = (index + 1) if choice.is_right_choice
  end
  # puts @correct_choice_id
  correct(gets.to_i)
end
puts "your total score is #{@score}"
