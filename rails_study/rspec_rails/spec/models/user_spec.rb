require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid if the level is not between 1 and 99" do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample #%i transforma em symbol.
    level = FFaker::Random.rand(100..999)
    user = User.new(nickname: nickname, kind: kind, level: level)
    #se chamasse o create ao invés do new iria dar erro antes da validação
    #pois é invalid e não conseguiria-se verificar no expect abaixo.

    expect(user).to_not be_valid
    # expect(User.create(nickname: 'Chronos', kind: :wizard, level: 100))
    #   .to_not be_valid (outra forma sem usar ffaker)
  end
  
  it "returns the correct hero title" do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample #%i transforma em symbol.
    level = FFaker::Random.rand(1..99)
    user = User.create(nickname: nickname, kind: kind, level: level)
    #já nesse teste pode-se usar o create pois não será invalidado antes
    #de realizar a validação com o expect.
    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  end
end
