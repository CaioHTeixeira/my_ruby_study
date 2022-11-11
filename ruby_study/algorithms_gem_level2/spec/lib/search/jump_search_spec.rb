require './lib/search/jump_search'

RSpec.describe Asearch::JumpSearch do
    arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 666, 777]
    
    it "item found" do
        value = 233
        jump_search = Asearch::JumpSearch.new.jump_search arr, value    
        
        expect(jump_search).to eql 13
    end

    it "item not found" do
        value = 611
        jump_search = Asearch::JumpSearch.new.jump_search arr, value
        
        expect(jump_search).to eql -1
    end
end