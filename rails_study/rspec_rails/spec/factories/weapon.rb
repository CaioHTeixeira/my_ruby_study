FactoryBot.define do
    factory :weapon do
        name { FFaker::Lorem.word }
        level { FFaker::Random.rand(1..99) }
        power_step { 100 }
        power_base { 3000 }
    end
end