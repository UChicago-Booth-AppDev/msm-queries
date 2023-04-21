Rails.application.routes.draw do


  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/eldest", { :controller => "directors", :action => "wisest"})

  get("/directors/youngest", { :controller => "directors", :action => "rookie"})

  get("/directors/:director_id", { :controller => "directors", :action => "director_details"})

  get("/movies", { :controller => "movies", :action => "index_movies"})

  get("/movies/:movie_id", { :controller => "movies", :action => "movie_details"})

  get("/actors", { :controller => "actors", :action => "index_actors"})

  get("/actors/:actor_id", { :controller => "actors", :action => "actor_details"})

end
