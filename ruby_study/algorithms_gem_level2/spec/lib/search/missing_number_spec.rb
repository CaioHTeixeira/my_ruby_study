require './lib/search/missing_number'

RSpec.describe Aarray::MissingNumber do 
    it "Missing number is correct!" do
        arr = [1, 2, 4, 6, 3, 7, 8]
        value = 8
        missing_number = Aarray::MissingNumber.new.missing_number arr, value
        
        expect(missing_number).to eql 5
    end

    it "There aren't missing numbers." do
        arr = [1, 2, 6, 4, 5, 3, 7]
        value = 7
        missing_number = Aarray::MissingNumber.new.missing_number arr, value

        expect(missing_number).to eql -1
    end
end