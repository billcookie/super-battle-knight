class Character < ApplicationRecord
  has_many :battles, through: :obligations
  has_many :obligations
  has_one_attached :photo
  validates :name, :age, :ranking, presence: true
  validates :name, uniqueness: true
end
