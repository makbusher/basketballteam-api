class TeamsController < ApplicationController
  def index 
    teams = Team.all
    render json: teams 
  end
  
  def create
    team = Team.new(
      name: params[:name],
      location: params[:location],
      league: params[:league],
      logo: params[:logo]
    )
    if team.save
      render json: team
    else 
      render json: { errors: team.errors.full_messages }, status: :bad_request
    end
  end
end
