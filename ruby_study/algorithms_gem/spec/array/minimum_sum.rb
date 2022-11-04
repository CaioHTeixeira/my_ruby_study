require './lib/array/minimum_sum'

RSpec.describe Aarray::MinimumSum do
    it "Minimum sum!" do
        arr = [1,2,3,4,5]

        minimum_sum = Aarray::MinimumSum.new.minimum_sum arr

        expect(minimum_sum).to eq 4
    end
end