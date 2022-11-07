require './lib/string/count'

RSpec.describe Pstring::Count do
    it "Lowercase count is correct" do
        input = "#GeeKs01fOr@gEEks07"
        count = Pstring::Count.new.count_character input

        expect(count[:lowercase_amount]).to eql 8
    end

    it "Uppercase count is correct" do
        input = "#GeeKs01fOr@gEEks07"
        count = Pstring::Count.new.count_character input

        expect(count[:uppercase_amount]).to eql 5
    end

    it "Special character count is correct" do
        input = "#GeeKs01fOr@gEEks07"
        count = Pstring::Count.new.count_character input

        expect(count[:special_characters_amount]).to eql 2
    end

    it "Number count is correct" do
        input = "#GeeKs01fOr@gEEks07"
        count = Pstring::Count.new.count_character input

        expect(count[:numeric_values_amount]).to eql 4
    end
end