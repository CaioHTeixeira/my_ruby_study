class MaximizeArray
    def maximize_array arr, k
        for item in 1..k do
            sum_of_negative_numbers = 0
            index_minimum_item = -1
            minimum_item = 2147483647

            for item in arr do
                minimum_item = arr.min
                index_minimum_item = arr.find_index minimum_item
            end
            
            break if minimum_item === 0

            arr[index_minimum_item] *= -1
        end

        return arr.sum
    end
end

class Main
    arr = [-2, 0, 5, -1, 2]
    k = 4 #number of modifications
    
    maximize_array = MaximizeArray.new
    output_maximize_array = maximize_array.maximize_array arr, k

    p "Output: #{output_maximize_array}"
end