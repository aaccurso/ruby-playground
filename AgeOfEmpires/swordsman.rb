class Swordsman < Warrior
  attr_accessor :level, :weapon_points

  def initialize
    super
    self.level= 1
    self.weapon_points= 20
  end

  def drain_energy_from warrior
    warrior.reduce_energy self.attack_points + ( self.level * self.weapon_points ) - warrior.defense_points
  end
end