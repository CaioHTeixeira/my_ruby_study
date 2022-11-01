require './array/find_maximum'

RSpec.describe AArray::FindMaximum do
    it "found maximum" do
        stack1 = [3, 6]
        stack2 = [4, 5]
        stack3 = [2, 1, 8]
        
        expect(AArray::FindMaximum.new
            .find_maximum(stack1, stack2, stack3)).to eql(9)
    end
  end