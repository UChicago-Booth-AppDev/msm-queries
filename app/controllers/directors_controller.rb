class DirectorsController < ApplicationController

  def index

    @list_of_directors = Director.all
    
    render({ :template => "directors_template/index.html.erb"})

  end

  def wisest

    @oldest = Director.where.not({ :dob => nil}).order({ :dob => :asc }). at(0)

    
    render({ :template => "directors_template/eldest.html.erb"})

  end

  def rookie

    @youngest = Director.order({ :dob => :desc }). at(0)

    
    render({ :template => "directors_template/youngest.html.erb"})

  end


  def director_details

    @director_id = params.fetch("director_id")

    @director = Director.where({:id => @director_id }).at(0)
    
    @filmography = Movie.where({:director_id => @director_id})
    

    render({ :template => "directors_template/director_details.html.erb"})

  end


end
