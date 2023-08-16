require 'rails_helper'

RSpec.describe Weapon, type: :model do
    it "current power is valid" do
        name = FFaker::Name.name
        power_step = 100
        power_base = 3000
        level = FFaker::Random.rand(1..99)
        description = FFaker::Lorem.characters
        weapon = Weapon.create(name: name, level: level, 
            power_base: power_base, power_step: power_step, 
            description: description)
            
        expect(weapon.current_power).to eq(power_base + (level * power_step))
    end

    it "using correct title" do
        name = FFaker::Name.name
        power_step = 100
        power_base = 3000
        level = FFaker::Random.rand(1..99)
        description = FFaker::Lorem.characters
        weapon = Weapon.create(name: name, level: level, 
            power_base: power_base, power_step: power_step, 
            description: description)

        expect(weapon.title).to eq("#{name} ##{level}")   
    end
end