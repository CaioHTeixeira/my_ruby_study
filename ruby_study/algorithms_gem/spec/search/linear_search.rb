require './lib/search/linear_search'

RSpec.describe Asearch::LinearSearch do
    arr = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]

    it "item found" do
        value = 60

        linear_search = Asearch::LinearSearch.new
            .linear_search arr, value

        expect(linear_search).to eql 4
    end

    it "item not found" do
        value = 55

        linear_search = Asearch::LinearSearch.new
            .linear_search arr, value
        
        expect(linear_search).to eql -1
    end
end