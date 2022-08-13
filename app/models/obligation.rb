class Obligation < ApplicationRecord
  belongs_to :character
  belongs_to :battle
  validates :character_id, uniqueness: {
    scope: [:battle_id]
  }
end
