require './lib/array/missing_number'

RSpec.describe Aarray::MissingNumber do 
    it "Missing number is correct!" do
        arr = [1, 2, 3, 5]
        value = 5

        missing_number = Aarray::MissingNumber.new.missing_number arr, value
        
        expect(missing_number).to eql 4
    end
end