class Battle < ApplicationRecord
  has_many :characters, through: :obligations
  validates :title, :fight_date, :location, presence: true
end
