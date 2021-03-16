class EquipmentRequirement < ApplicationRecord
  belongs_to :program, inverse_of: :equipment_requirements
  belongs_to :equipment, inverse_of: :equipment_requirements
end
