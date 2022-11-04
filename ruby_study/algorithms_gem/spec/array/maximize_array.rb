require './lib/array/maximize_array'

RSpec.describe Aarray::MaximizeArray do
    it "Maximized array" do
        arr = [-2,-1,2,3,5]
        k = 2

        maximize_array = Aarray::MaximizeArray.new
            .maximize_array arr, k

        expect(maximize_array).to eq(13)
    end
end