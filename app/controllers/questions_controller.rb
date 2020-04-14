class QuestionsController < ApplicationController
  def index
    @question = Question.new
    @questions = Question.all.order(id: "DESC")
  end

  def create
    Question.create(question_params)
    redirect_to "/questions"
  end
  
  def show    
    @question  = Question.find(params[:id])
    @solution  = Solution.new
    @solutions = @question.solutions
  end

  

  private

  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
