class Sport < ApplicationRecord
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  has_many :programs, inverse_of: :sport, dependent: :destroy
end
