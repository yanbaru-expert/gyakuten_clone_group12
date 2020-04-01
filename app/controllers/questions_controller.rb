class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(id: "DESC")
  end
end