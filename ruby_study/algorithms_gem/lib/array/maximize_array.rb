#A = Algorithm 
module AArray

    class MaximizeArray
        def maximize_array arr, k
            for item in 1..k do
                minimum_item = arr.min
                index_minimum_item = arr.find_index minimum_item
                
                break if minimum_item === 0

                arr[index_minimum_item] *= -1
            end

            return arr.sum
        end
    end
end