class Round < ApplicationRecord
  belongs_to :team
  has_many :hits
  has_many :passes
  has_many :spikes
end
