class ActorsController < ApplicationController

  def index_actors

    @list_of_actors = Actor.all
    
    render({ :template => "actors_template/index_actors.html.erb"})

  end

  def actor_details
    
    @actor_id = params.fetch("actor_id")

    @actor = Actor.where({:id => @actor_id }).at(0)

    render({ :template => "actors_template/actor_details.html.erb"})

  end

end
