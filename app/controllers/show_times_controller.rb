class ShowTimesController < ApplicationController

  def index
    @movies = Movie.all
  end

end
