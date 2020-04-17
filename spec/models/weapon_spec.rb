require 'rails_helper'

RSpec.describe Weapon, type: :model do

  it "is invalid if the level is not between 1 and 99" do
    weapon = build(:weapon, level: FFaker::Random.rand(100..999))
    expect(weapon).to_not be_valid
  end

  it "is invalid if the power_base is not greather than or equal to 3000" do
    weapon = build(:weapon, power_base: Random.rand(0..299))
    expect(weapon).to_not be_valid
  end

  it "is invalid if the power_step 100" do
    weapon = build(:weapon,  power_step: Random.rand(0..99))
    weapon1 = build(:weapon, power_step: Random.rand(101..99999))
    expect(weapon1).to_not be_valid
    expect(weapon2).to_not be_valid
  end

  it 'returns the correct weapon current_power' do
    power_base = Random.rand(3000..99999)
    power_step = 100
    level = Random.rand(1..99)
    current_power = (power_base + ((level – 1) * power_step))
    weapon = create(:weapon, power_base: power_base, power_step: power_step, level: level)
    expect(weapon.current_power).to eq(current_power)
  end

  it 'returns the correct weapon title' do
    #name = FFaker::Name.name
    #level = Random.rand(1..99)
    weapon = build(:weapon)
    #weapon = create(:weapon, name: name, level: level)
    expect(weapon.title).to eq("#{weapon.name} ##{weapon.level}")
  end
end
