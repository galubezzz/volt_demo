class Equipment < ApplicationRecord
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  has_many :equipment_requirements, inverse_of: :equipment, dependent: :destroy
end
