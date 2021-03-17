class ProgramsController < ApplicationController
  def index
    @programs = Program.includes(:sport, :required_equipment).all
    @programs = @programs.where(sport_id: params[:sport_id]) if params[:sport_id]
  end
end
