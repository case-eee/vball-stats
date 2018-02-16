class Team < ApplicationRecord
  has_many :players
  has_many :rounds
end
