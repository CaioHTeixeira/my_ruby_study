require 'date'

#P = Problem 
module Pdate

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
                result << -1 if result == [] || result == nil || 
                    dates_after == []
                
                dates_after = []
            end        
            
            result
        end
    end
end