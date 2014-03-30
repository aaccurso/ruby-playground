class Warrior
  attr_accessor :energy, :attack_points, :defense_points

  def initialize
    self.energy= 100
    self.attack_points= 30
    self.defense_points= 20
  end

  def attack warrior
    if self.can_attack? warrior
      warrior.reduce_energy self.attack_points - self.defense_points
    end
  end

  def can_attack? warrior
    warrior.defense_points < self.attack_points
  end

  def reduce_energy points
    self.energy= self.energy - points
  end
end