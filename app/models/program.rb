class Program < ApplicationRecord
  belongs_to :sport, optional: true, inverse_of: :programs
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  has_many :equipment_requirements, inverse_of: :program, dependent: :destroy
  has_many :required_equipment, through: :equipment_requirements, class_name: "Equipment", source: :equipment
end
