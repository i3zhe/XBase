class HomeController < ApplicationController
  
  
  def index
    @hot_problems    = Problem.hot
    @latest_problems = Problem.latest
  end

  def search
    
  end
end
