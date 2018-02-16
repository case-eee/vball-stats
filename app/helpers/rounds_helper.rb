module RoundsHelper
  def find_average_hits(player, round_id)
    percentage = player.average_hits_by_round(round_id)
    return "#{percentage}%" if percentage
  end

  def find_average_passes(player, round_id)
    percentage = player.average_passes_by_round(round_id)
    return "#{percentage}%" if percentage
  end
end
