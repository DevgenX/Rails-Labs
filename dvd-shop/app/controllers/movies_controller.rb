class MoviesController < ApplicationController

    def index 
        movies = Movie.all 
        render json: movies
    end

    def create 
        movie = Movie.create(:title, :year, :length, :director, :description)
        render json: movie
    end


end
