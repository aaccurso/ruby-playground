require 'rspec'
require '../AgeOfEmpires/warrior'

describe 'Age of Empires' do

  it 'should reduce energy from Atila warrior' do
    atila = Warrior.new
    wallace = Warrior.new

    wallace.attack atila

    atila.energy.should == 90
  end

  

end