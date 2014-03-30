module Defender
  attr_accessor :energy, :defense_points

  def reduce_energy points
    if self.energy > points
      self.energy= self.energy - points
    else
      self.energy= 0
    end
  end
end
