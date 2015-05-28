class VotersController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "secret"

  def index
    render json: Voter.all
  end

  def create
    voter = Voter.new(name: params[:name], party: params[:party])
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end

  def update
    voter = Voter.find_by_id(params[:id])
    if params[:name]
      voter.update(name: params[:name])
    elsif params[:party]
      voter.update(party: params[:party])
    end
    render json: voter
  end

  def show
    render json: Voter.find_by_id(params[:id])
  end

end
