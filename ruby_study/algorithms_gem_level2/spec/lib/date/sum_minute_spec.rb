require './lib/date/sum_minute'

RSpec.describe PDate::SumMinute do
    it "k equal 21 test" do
        t = "12:43" 
        k = 21

        output = PDate::SumMinute.new.sum_minute t, k

        expect(output).to eql "13:04"
    end

    it "k equal 534 test" do
        t = "20:39" 
        k = 534

        output = PDate::SumMinute.new.sum_minute t, k

        expect(output).to eql "05:33"
    end
end