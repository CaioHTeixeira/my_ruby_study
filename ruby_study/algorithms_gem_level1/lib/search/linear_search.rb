#A=Algorithm
module Asearch

    class LinearSearch
        def linear_search(arr, value)
            found_item = false
            
            arr.each do |item|
                if item === value
                    found_item = true
                    return arr.find_index(item)
                end
            end
            
            -1 if !found_item
        end
    end
end