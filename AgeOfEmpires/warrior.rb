require '../AgeOfEmpires/defender'
require '../AgeOfEmpires/attacker'

class Warrior
  include Attacker
  include Defender

  def initialize
    self.energy= 100
    self.attack_points= 30
    self.defense_points= 20
  end

  def drain_energy_from defender
    defender.reduce_energy self.attack_points - defender.defense_points
  end

end