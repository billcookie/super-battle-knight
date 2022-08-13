class Character < ApplicationRecord
  has_one_attached :photo
  has_many :battles, through: :obligations
  has_many :obligations
  validates :name, :age, :ranking, presence: true
  validates :name, uniqueness: true
end
