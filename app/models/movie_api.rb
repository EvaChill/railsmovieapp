# frozen_string_literal: true

require 'httparty'

class MovieApi
  include HTTParty
  base_uri 'https://api.themoviedb.org/3'

  def self.fetch_movies
    response = get("/movie/popular", query: { api_key: ENV['TMDB_API_KEY'] })
    response.parsed_response['results'] if response.success?
  end
end
