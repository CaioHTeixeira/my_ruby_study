require './lib/array/minimum_product'

RSpec.describe Aarray::MinimumProduct do
    it "Minimum product!" do
        arr = [-1,-2,4,5,3]

        minimum_product = Aarray::MinimumProduct.new.minimum_product arr

        expect(minimum_product).to eq(-120)
    end
end