#A = Algorithm 
module Aarray

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
end