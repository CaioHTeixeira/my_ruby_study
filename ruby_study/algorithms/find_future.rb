require 'date'

class FindFuture
    def find_future arr, query
        dates_after = []
        result = []

        arr.sort!
        query.each do |query_item|
            arr.each_with_index do |array_item, index|
                if array_item > query_item
                    dates_after << array_item
                end
            end
                
            result << dates_after[0] if dates_after[0] != nil
            dates_after = []
        end        

        result << -1 if result == [] || result == nil
          
        return result
    end
end

class Main
    arr = [Date.new(1233,4,22), Date.new(633,3,1), Date.new(56645,5,23), Date.new(233,12,4)]
    query = [Date.new(434599,3,23)]

    find_future = FindFuture.new
    output = find_future.find_future arr, query

    if output[0] != -1 && output[0] != nil
        query.each_with_index do |item, index|
            p "The closest date after #{item} is #{output[index]}."
        end
    else 
        p -1
    end
end