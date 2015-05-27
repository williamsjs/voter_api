class VotersController < ApplicationController

  def index
    render json: Voter.all
  end

end
