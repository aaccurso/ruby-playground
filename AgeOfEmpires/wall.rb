class Wall
  include Defender

  def initialize
    self.energy= 1000
    self.defense_points = 100
  end
end