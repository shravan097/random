class ShortUrlController < ApplicationController
  def index
    render json: {
      'message': 'it works'
    }, status: 200
  end

  def create
    render json: {
      message: 'done'
    }, status: 201
  end
  
end
