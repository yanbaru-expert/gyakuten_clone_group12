class SolutionsController < ApplicationController
    
      
    
      def create
        @solution=Solution.create!(title: params[:title],detail: params[:detail])
        redirect_to "/questions/#{@solution.title}"
      end
    
      
end