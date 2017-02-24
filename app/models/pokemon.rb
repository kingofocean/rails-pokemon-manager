class Pokemon < ApplicationRecord
  has_many :types
  has_many :attacks, through: :types
  validates :name, uniqueness: true, presence: true
end
