class Reversal
    def reversal arr, k
        i = 0 
        new_arr = []
        
        arr.each_with_index do |item, index|
            if index + k-1 >= arr.length - 1
                unless i == k
                    new_arr[i] = item
                    i += 1
                end
            else
                new_arr[index+k] = item
            end
        end

        return new_arr
    end
end

class Main 
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 15, 7]
    k = 5

    reversal = Reversal.new
    output = reversal.reversal arr, k

    p "Output: #{output}."
end