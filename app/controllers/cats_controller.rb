class CatsController < ApplicationController

  def index
    c = Cat.order("RANDOM()").first
    render json: c.to_json
  end

  def vote

  end



end
