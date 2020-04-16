class SolutionsController < ApplicationController
    
      
    
      def create
        question  = Question.find_by(id:params[:id])
        Solution.create(solution_params)
        redirect_to "/questions/#{params[:question_id]}"
      end
    
      private
      def solution_params
        params.require(:solution).permit(:detail).merge(question_id: params[:question_id])
      end
      
end