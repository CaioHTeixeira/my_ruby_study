require './lib/string/count'

RSpec.describe Pstring::Count do
    input = "#GeeKs01fOr@gEEks07"
    count = Pstring::Count.new.count_character input
    
    it "Lowercase count is correct" do
        expect(count[:lowercase_amount]).to eql 8
    end

    it "Uppercase count is correct" do
        expect(count[:uppercase_amount]).to eql 5
    end

    it "Special character count is correct" do
        expect(count[:special_characters_amount]).to eql 2
    end

    it "Number count is correct" do
        expect(count[:numeric_values_amount]).to eql 4
    end
end