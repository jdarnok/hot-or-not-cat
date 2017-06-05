class CatsController < ApplicationController
  before_action :authenticate_user!
  def shuffle
    votes = current_user.votes.collect(&:cat)
    cats = Cat.all
    arr = cats - votes
    # binding.pry
    # cats = Cat.includes(:votes).where.not({votes: votes}).order("RANDOM()").limit(2)
    render json: arr.sample(2).to_json
  end

  def index
    cats = Cat.all.order(rating: :desc)
    render json: cats.to_json
  end

  def vote
    Vote.create(user: current_user, cat_id: params[:voted], rating: 1)
    Vote.create(user: current_user, cat_id: params[:unvoted], rating: 0)
    render json: {}, status: 201
  end

  def show
    cat = Cat.order("RANDOM()").first
    render json: cat.to_json
  end

  def my_cats
   cats = Cat.joins(:votes).where(votes: {user_id: current_user.id})
    render json: cats.to_json
  end



end
