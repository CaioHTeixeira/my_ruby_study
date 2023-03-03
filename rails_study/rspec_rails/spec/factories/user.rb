FactoryBot.define do
    factory :user do
        nickname { FFaker::Lorem.word }
        level { FFaker::Randon.rand(1..99) }
        kind { %i[knight wizard].sample }
    end
end