class MoviesController < ApplicationController

  def index_movies

    @list_of_movies = Movie.all
    
    render({ :template => "movies_template/index_movies.html.erb"})

  end

  def movie_details
    
    @movie_id = params.fetch("movie_id")

    @movie = Movie.where({:id => @movie_id }).at(0)
    

    render({ :template => "movies_template/movie_details.html.erb"})

  end

end
