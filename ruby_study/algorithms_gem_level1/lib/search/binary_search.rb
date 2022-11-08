#A=Algorithm
module Asearch

    class BinarySearch

        def binary_search(array, left, right, value)
            
            if right >= left
                mid = left + (right - left).div(2);
                
                return mid if value === array[mid]
                
                if value > array[mid]
                    return binary_search(array, mid+1, right, value)
                end
                
                return binary_search(array, left, mid-1, value)
            end

            return -1
        end
    end
end