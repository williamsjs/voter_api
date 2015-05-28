class VotersController < ApplicationController
  before_filter :restrict_access

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

  private def restrict_access
    authenticate_on_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end

end
