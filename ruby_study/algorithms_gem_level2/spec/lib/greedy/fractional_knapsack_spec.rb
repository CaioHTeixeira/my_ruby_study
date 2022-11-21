require './lib/greedy/fractional_knapsack'

RSpec.describe Agreedy::FractionalKnapsack do
    it "test with capacity 50" do
        arr = [
            { value: 60, weight: 10 },
            { value: 100, weight: 20 },
            { value: 120, weight: 30 }
        ]
        w = 50

        fractional_knapsack = Agreedy::FractionalKnapsack.new
            .fractional_knapsack arr, w

        expect(fractional_knapsack).to eql 240
    end

    it "test with capacity 10" do
        arr = [
            { value: 500, weight: 30 }
        ]
        w = 10

        fractional_knapsack = Agreedy::FractionalKnapsack.new
            .fractional_knapsack arr, w

        expect(fractional_knapsack).to eql 166.667
    end
end