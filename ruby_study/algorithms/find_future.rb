require 'date'

class FindFuture
    def find_future arr, query, q
        arr.sort!
        query.each do |query_item|
            arr.each_with_index do |array_item, index|
                if array_item > query_item
                    return array_item
                end
            end
        end        
    end
end

class Main
    arr = [Date.new(1233,4,22), Date.new(633,3,1), Date.new(56645,5,23), Date.new(233,12,4)]
    p arr
    q = 2
    query = [Date.new(4345-3-23), Date.new(2-3-12)]

    find_future = FindFuture.new
    output = find_future.find_future arr, query, q

    for item in query do
        p item
        p "The closest date after #{item} is #{output}."
    end
end