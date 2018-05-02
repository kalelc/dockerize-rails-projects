class ActivitiesController < ApplicationController
  def index
    render json: {
      new_status: 'connection with app v3 updated'
    }
  end
end
