class ProgramsController < ApplicationController
  def index
    @programs = Program.includes(:sport, :required_equipment).all
    @programs = @programs.where(sport_id: params[:sport_id]) if params[:sport_id]
    if params[:equipment_ids]
      @programs = @programs.joins(:equipment_requirements).merge(EquipmentRequirement.where(equipment_id: params[:equipment_ids])).distinct 
      @programs = @programs.to_a.reject{|program| (program.required_equipment_ids - Array(params[:equipment_ids]).map{|x| x.to_i}).length > 0}
    end
  end
end
