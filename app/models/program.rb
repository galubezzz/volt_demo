class Program < ApplicationRecord
  belongs_to :sport, optional: true, inverse_of: :programs
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
