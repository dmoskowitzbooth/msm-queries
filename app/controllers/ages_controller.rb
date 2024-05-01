class AgesController < ApplicationController

def youngest
  render ({ :template => "age_templates/youngest"})
end

def eldest
  render ({ :template => "age_templates/eldest"})
end
