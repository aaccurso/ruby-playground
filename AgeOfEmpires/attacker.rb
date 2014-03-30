module Attacker
  attr_accessor :attack_points

  def attack defender
    if self.can_attack? defender
      drain_energy_from defender
    end
  end

  def drain_energy_from defender
    defender.reduce_energy self.attack_points - defender.defense_points
  end

  def can_attack? defender
    defender.defense_points < self.attack_points
  end
end