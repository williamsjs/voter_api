class VotersController < ApplicationController

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

end
