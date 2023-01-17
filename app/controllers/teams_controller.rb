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

  def show
    team = Team.find_by(id: params[:id])
    render json: team
  end

  def update
    team = Team.find_by(id: params[:id])
    team.name = params[:name] || team.name
    team.location = params[:location] || team.location
    team.league = params[:league] || team.league
    team.logo = params[:logo] || team.logo
    if team.save
      render json: team
    else 
      render json: {errors: team.errors.full_messages}, status: :bad_request
    end
  end
end
