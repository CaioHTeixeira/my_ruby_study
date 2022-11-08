require './lib/array/find_three'

RSpec.describe Aarray::FindThree do
    it "found three max elements!" do
        arr = [4,6,2,9,13,15,7,14]

        three_max = Aarray::FindThree.new.find_three arr

        expect(three_max).to eql([15,14,13])
    end
end