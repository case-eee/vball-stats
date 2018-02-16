class Player < ApplicationRecord
  belongs_to :team
  has_many :hits
  has_many :passes
  has_many :spikes

  def average_spikes_by_round(round_id)
    spikes_by_round = spikes.where(round_id: round_id)
    (spikes_by_round.sum(:score) / (spikes_by_round.count * 3).to_f).round(3) * 100
  end

  def average_hits_by_round(round_id)
    hits_by_round = hits.where(round_id: round_id)
    (hits_by_round.sum(:score) / (hits_by_round.count * 3).to_f).round(3) * 100
  end

  def average_passes_by_round(round_id)
    passes_by_round = passes.where(round_id: round_id)
    (passes_by_round.sum(:score) / (passes_by_round.count * 3).to_f).round(3) * 100
  end
end
