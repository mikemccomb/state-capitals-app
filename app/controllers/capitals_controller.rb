class CapitalsController < ApplicationController
  def index
    @capitals = Capital.all
    render :index
  end
end
