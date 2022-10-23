class CountingSort
    def counting_sort arr
        sorted_array = []
        count_array = Array.new(10, 0)

        for item in arr do
            count_array[item] += 1 #[0, 2, 2, 0, 1, 1, 0, 1, 0, 0]
        end

        for item in 0..count_array.length - 2 do
            count_array[item + 1] = 
                count_array[item] + count_array[item + 1] 
        end

        for item in (arr.length - 1).downto 0 #de 9 ate 0
            # p item
            sorted_array[count_array[arr[item]] - 1] = arr[item]
            --count_array[arr[item]]
        end

        # for item in 1..9 do
        #     count_array[item] += count_array[item-1]
        # end
        p count_array #[0, 2, 4, 4, 5, 6, 6, 7, 7, 7]
        
        return sorted_array
    end
end

class Main
    arr = [1, 4, 1, 2, 7, 5, 2]

    counting_sort = CountingSort.new
    sorted_array = counting_sort.counting_sort arr

    puts "Sorted array: #{sorted_array}."
end