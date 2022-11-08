#A=algorithm
module Asort
    class CountingSort
        def counting_sort arr
            sorted_array = []
            count_array = Array.new(10, 0)
            p count_array
            for item in arr do
                count_array[item] += 1
            end

            for item in 0..count_array.length - 2 do
                count_array[item + 1] = 
                    count_array[item] + count_array[item + 1] 
            end
            
            for item in (arr.length - 1).downto 0
                sorted_array[count_array[arr[item]] - 1] = arr[item]
                count_array[arr[item]] -= 1
            end

            for item in 0..arr.length - 1
                arr[item] = sorted_array[item] 
            end
            
            return arr
        end
    end
end