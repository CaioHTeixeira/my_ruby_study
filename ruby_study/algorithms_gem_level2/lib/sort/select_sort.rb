#A=Algorithm
module Asort
    class SelectSort 
        def select_sort arr
            for i in 0..arr.length-1 do
                min_index = i

                for j in i+1..arr.length-1 do
                    min_index = j if arr[j] < arr[min_index]
                end

                aux = arr[min_index]
                arr[min_index] = arr[i]
                arr[i] = aux
            end

            arr
        end
    end
end