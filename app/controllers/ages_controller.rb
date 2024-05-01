class AgesController < ApplicationController

def youngest
  young=Director.where.not({ :dob => nil }).order({ :dob => :desc })
  @match=young.at(0)

  render ({ :template => "age_templates/youngest"})
  
end

def eldest
  old=Director.where.not({ :dob => nil }).order({ :dob => :asc })
  @match=old.at(0)
  render ({ :template => "age_templates/eldest"})
end
end
