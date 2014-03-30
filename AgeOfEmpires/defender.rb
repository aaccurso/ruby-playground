class Defender
  attr_accessor :energy, :defense_points

  def reduce_energy points
    self.energy= self.energy - points
  end
end
