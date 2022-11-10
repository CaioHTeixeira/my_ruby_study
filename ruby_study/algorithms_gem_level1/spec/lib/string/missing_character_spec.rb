require './lib/string/missing_character'

RSpec.describe Pstring::MissingCharacter do
    it "missing characters found" do
        text = "The quick brown fox jumps"
        missing_character = Pstring::MissingCharacter.new
            .missing_character text

        expect(missing_character).to eql 'adglvyz'
    end

    it "missing characters found" do
        text = "welcome to geeksforgeeks"
        missing_character = Pstring::MissingCharacter.new
            .missing_character text

        expect(missing_character).to eql 'abdhijnpquvxyz'
    end
end