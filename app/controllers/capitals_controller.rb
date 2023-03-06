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

  def show
    @capital = Capital.find_by(id: params[:id])
    render :show
  end

  def update
    @capital = Capital.find_by(id: params[:id])
    @capital.update(
      city: params[:city] || @capital.city,
      state: params[:state] || @capital.state,
      timezone: params[:state] || @capital.timezone,
    )
    render :show
  end

  def destroy
    capital = Capital.find_by(id: params[:id])
    capital.destroy
    render json: { message: "Buh-bye" }
  end
end
