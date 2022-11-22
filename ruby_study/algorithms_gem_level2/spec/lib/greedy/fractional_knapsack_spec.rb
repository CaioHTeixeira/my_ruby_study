require './lib/greedy/fractional_knapsack'

RSpec.describe Agreedy::FractionalKnapsack do
    it "test with capacity 50" do
        arr = [
            Agreedy::FractionalKnapsack.new(60, 10),
            Agreedy::FractionalKnapsack.new(100, 20),
            Agreedy::FractionalKnapsack.new(120, 30)
        ]
        w = 50

        fractional_knapsack = Agreedy::FractionalKnapsack.new
            .fractional_knapsack arr, w

        expect(fractional_knapsack).to eql 240.000
    end

    it "test with capacity 10" do
        arr = [
            Agreedy::FractionalKnapsack.new(500, 30),
            Agreedy::FractionalKnapsack.new(100, 20)
        ]
        w = 10

        fractional_knapsack = Agreedy::FractionalKnapsack.new
            .fractional_knapsack arr, w

        expect(fractional_knapsack).to eql 166.667
    end
end