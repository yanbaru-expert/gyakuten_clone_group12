class SolutionsController < ApplicationController
    
      
    
      def create
        @solution = Solution.new(solution_params)
        @solution.save
        redirect_to "/questions/#{params[:question_id]}"
      end
    
      private
      def solution_params
        params.require(:solution).permit(:title,:detail)
      end
      
end