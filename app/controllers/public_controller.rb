class PublicController < ApplicationController
  def index
    render json: params["hub.challenge"]
  end
end
