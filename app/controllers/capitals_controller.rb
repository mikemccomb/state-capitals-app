class CapitalsController < ApplicationController
  def index
    @capitals = Capital.all
    render :index
  end

  def create
    @capital = Capital.create(
      city: params[:city],
      state: params[:state],
      timezone: params[:timezone],
    )
    render :show
  end
end
