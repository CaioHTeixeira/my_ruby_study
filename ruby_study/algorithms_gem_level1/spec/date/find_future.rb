require './lib/date/find_future'

RSpec.describe Pdate::FindFuture do
    arr = [Date.new(1233,4,22), Date.new(633,3,1), Date.new(56645,5,23), 
        Date.new(233,12,4)]
    query = [Date.new(4345,3,23), Date.new(444345,3,23)]

    find_future = Pdate::FindFuture.new.find_future arr, query

    it "The closest date after 4345-03-23 is 56645-05-23}." do
        expect(find_future[0]).to eql Date.new 56645,05,23
    end

    it "The closest date after 444345-03-23 is -1}." do
        expect(find_future[1]).to eql -1
    end
end