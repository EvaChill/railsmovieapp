require "httparty"

class MoviesController < ApplicationController
  def index
    url = "https://api.themoviedb.org/3/movie/popular?api_key=83fce2695181024b89f55392350bdfd4&language=en-US&page=1"
    response = HTTParty.get(url).parsed_response
    @movies = response["results"] || []
  end


  def show
    movie_id = params[:id]
    url = "https://api.themoviedb.org/3/movie/#{movie_id}?api_key=83fce2695181024b89f55392350bdfd4"
    response = HTTParty.get(url)
    @movie = response.parsed_response
  end
end
