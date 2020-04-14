class SolutionsController < ApplicationController
    
      
    
      def create
        @question = Question.find_by(id:params[:question_id])
        @solution = @question.solutions.create
        
        redirect_to "/questions/#{params[:question_id]}"
      end
    
      private
      def solution_params
        params.require(:solution).permit(:title,:detail)
      end
      
end