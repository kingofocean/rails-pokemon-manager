class Type < ApplicationRecord
  has_attachment :photo

  has_many :pokemons
  has_many :attacks
  validates :name, uniqueness: true, presence: true
end
