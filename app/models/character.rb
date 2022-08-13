class Character < ApplicationRecord
  has_many :battles, through: :obligations
  validates :name, :age, :ranking, presence: true
  validates :name, uniqueness: true

end
