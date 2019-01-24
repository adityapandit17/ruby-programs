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

quiz_array = @quiz_data
quiz_list = quiz_array.collect { |q|  q[:name] }
quiz_list.each.with_index(1) do |name,index|
  puts "#{index}. #{name}"
end
question_array = @questions_data
question_choices = @choice_data
$quiz_choice = gets.to_i
puts 'what is your username'
$username = gets.to_s
puts 'what is your email'
email = gets.to_s
puts 'what is your contact'
contact = gets.to_s

def correct(username, quiz_choice, question, answer)
  @score += 1 if @correct_choice_id == answer
  @is_right = true
  if @correct_choice_id == answer
    @is_right = true
  else
    @is_right = false
  end
  UserQuestionAnswer.create(username, quiz_choice, question, answer, @is_right)
end

User.create($username, email, contact)
Quiz.create($quiz_choice,$username)
Question.create(question_array).shuffle
QuestionChoice.create(question_choices).shuffle
all_choices = QuestionChoice.all.shuffle
all_questions = Question.all.shuffle
all_questions.each.with_index(1) do |question,index|
  puts "question #{index}. #{question.question}"
  choices = all_choices.select { |c| c.question_id == question.question_id }
  choices.each_with_index do |choice, index|
    puts "option #{index + 1}. #{choice.choice}"
    @correct_choice_id = (index + 1) if choice.is_right_choice
  end
  # puts @correct_choice_id
  correct($username,$quiz_choice,question.question,gets.to_i)
end
puts "#{$username} your total score is #{@score}"
