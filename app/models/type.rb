class Type < ApplicationRecord
  has_many :pokemons
  has_many :attacks
  validates :name, uniqueness: true, presence: true
end
