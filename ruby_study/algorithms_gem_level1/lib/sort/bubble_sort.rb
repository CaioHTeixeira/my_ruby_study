#A=algorithm
module Asort
    class BubbleSort
            
        def bubble_sort arr

            for i in 0..arr.length - 1 do
                for j in 0..arr.length - 1 do
                    unless i === arr.length
                        if arr[j] > arr[i]
                            aux = arr[j]
                            arr[j] = arr[i]
                            arr[i] = aux
                        end
                    end
                end
            end

            arr
        end
    end
end