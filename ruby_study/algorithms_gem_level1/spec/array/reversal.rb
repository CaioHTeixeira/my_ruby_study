require './lib/array/reversal'

RSpec.describe Aarray::Reversal do
    it "Reserval array in k positions" do
        arr = [3,4,5,1,2,3,7,8,9]
        k = 3

        reversal = Aarray::Reversal.new.reversal arr, k

        expect(reversal).to eq [7,8,9,3,4,5,1,2,3]
    end
end