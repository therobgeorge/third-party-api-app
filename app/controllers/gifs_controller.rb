class GifsController < ApplicationController
  def index
    response = HTTP.get("https://api.giphy.com/v1/gifs/search?api_key=#{Rails.application.credentials.giphy_api_key}=#{params[:search]}&limit=25&offset=0&rating=pg-13&lang=en")
    render json: response.parse(:json)
  end
end
