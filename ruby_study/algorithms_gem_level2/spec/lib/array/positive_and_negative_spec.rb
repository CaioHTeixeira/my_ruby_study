require './lib/array/positive_and_negative'

RSpec.describe PArray::PositiveAndNegative do
    it "first test" do
        input = [1, -3, 5, 6, -3, 6, 7, -4, 9, 10]
        expected_output = [1, -3, 5, -3, 6, 6, 7, -4, 9, 10]

        output = PArray::PositiveAndNegative.new
            .positive_and_negative input
        
        expect(output).to eql expected_output
    end

    it "second test" do
        input = [-1, 3, -5, 6, 3, 6, -7, -4, -9, 10]
        expected_output = [3, -1, 6, -5, 3, -7, 6, -4, 10, -9]
        
        output = PArray::PositiveAndNegative.new
            .positive_and_negative input

        expect(output).to eql expected_output
    end
end