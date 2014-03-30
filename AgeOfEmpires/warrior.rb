require File.expand_path(File.dirname(__FILE__) + '/defender.rb')

class Warrior < Defender
  attr_accessor :attack_points

  def initialize
    self.energy= 100
    self.attack_points= 30
    self.defense_points= 20
  end

  def attack defender
    if self.can_attack? defender
      drain_energy_from defender
    end
  end

  def drain_energy_from defender
    defender.reduce_energy self.attack_points - self.defense_points
  end

  def can_attack? defender
    defender.defense_points < self.attack_points
  end


end