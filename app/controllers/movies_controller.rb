class MoviesController < ApplicationController
  def index
    @movies = Movie.all.page(params[:page]).per(10)
  end
end