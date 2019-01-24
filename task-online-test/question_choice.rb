# frozen_string_literal: true

require 'pry'
# class QuestionChoice
class QuestionChoice
  @question_choices = []
  attr_accessor :question_id, :choice_id, :choice, :is_right_choice
  def initialize(hsh)
    hsh.each { |k, v| public_send("#{k}=", v) }
  end

  def self.all_choices
    @question_choices
  end

  def self.all
    QuestionChoice.all_choices
  end

  def self.create(question_choices)
    question_choices.each do |choice_hash|
      QuestionChoice.all_choices << QuestionChoice.new(choice_hash)
    end
  end
end
