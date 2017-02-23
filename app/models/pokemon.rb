class Pokemon < ApplicationRecord
  has_many :types, dependent: :destroy
  has_many :attacks, through: :types
  validates :name, uniqueness: true, presence: true
end
