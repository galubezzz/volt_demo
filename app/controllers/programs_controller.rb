class ProgramsController < ApplicationController
  def index
    @programs = Program.includes(:sport, :required_equipment).all
  end
end
