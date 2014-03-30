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

end