#A=Algorithm
module Asearch

    class LinearSearch
        def linear_search(arr, value)
            found_item = false
            
            arr.each_with_index do |item, index|
                if item === value
                    found_item = true
                    return index
                end
            end
            
            -1 if !found_item
        end
    end
end