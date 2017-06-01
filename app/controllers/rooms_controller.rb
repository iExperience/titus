class RoomsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index

  end

  def search
    results = Room.search(size: search_params[:room_size],
                          view: search_params[:view], amenities: [])
    render json: results, status: 201
  end

  def search_params
    params.require(:room).permit(:room_size, :view, :tv, :sauna, :parking, :cleaning)
  end
end