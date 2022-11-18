require './lib/greedy/minimum_sum'

RSpec.describe Agreedy::MinimumSum do
    it "Minimum sum with negative array numbers is correct" do
        a = [1, 2, -3]
        b = [-2, 3, -5]
        k = 5
        
        minimum_sum = Agreedy::MinimumSum.new.minimum_sum a, b, k

        expect(minimum_sum).to eql -31
    end

    it "Minimum sum is correct" do
        a = [2, 3, 4, 5, 4]
        b = [3, 4, 2, 3, 2]
        k = 3
        
        minimum_sum = Agreedy::MinimumSum.new.minimum_sum a, b, k

        expect(minimum_sum).to eql 25
    end
end