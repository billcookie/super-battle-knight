class Battle < ApplicationRecord
  has_many :characters, through: :obligations
  has_many :obligations
  validates :title, :fight_date, :location, presence: true
end
