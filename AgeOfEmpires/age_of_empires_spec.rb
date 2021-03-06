require 'rspec'
require '../AgeOfEmpires/defender'
require '../AgeOfEmpires/attacker'
require '../AgeOfEmpires/warrior'
require '../AgeOfEmpires/swordsman'
require '../AgeOfEmpires/wall'
require '../AgeOfEmpires/missile'

describe 'Age of Empires' do

  it 'should make Wallace warrior reduce energy from Atila warrior' do
    atila = Warrior.new
    wallace = Warrior.new

    wallace.attack atila

    atila.energy.should == 90
  end

  it 'should make Zorro swordsman reduce 30 energy from Atila warrior' do
    atila = Warrior.new
    zorro = Swordsman.new

    zorro.attack atila

    atila.energy.should == 70
  end

  it 'should not allow Wall to attack' do
    chinnese_wall = Wall.new

    expect {
      chinnese_wall.attack Warrior.new
    }.to raise_error NoMethodError
  end

  it 'should not allow Missile to defend' do
    tomahawk = Missile.new

    expect {
      tomahawk.reduce_energy 10
    }.to raise_error NoMethodError
  end

  it 'kills Atila warrior with Tomahawk missile' do
    tomahawk = Missile.new
    atila = Warrior.new

    tomahawk.attack atila

    atila.energy.should == 0
  end

  it 'should leave Chinnese Wall with 100 energy by Tomahawk missile attack' do
    tomahawk = Missile.new
    chinnese_wall = Wall.new

    tomahawk.attack chinnese_wall

    chinnese_wall.energy.should == 100
  end

end