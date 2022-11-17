#A=Algorithm
module Asort
    class QuickSort
        def quick_sort arr, low, high
            if low < high
                partition_index = partition arr, low, high
                quick_sort arr, low, partition_index - 1
                quick_sort arr, partition_index + 1, high
            end

            arr
        end

        def partition arr, low, high
            pivot = arr[high]
            i = low - 1

            for j in low..high-1 do
                if arr[j] < pivot
                    i += 1
                    swap_elements arr, i, j
                end
            end

            swap_elements arr, i + 1, high

            i + 1
        end

        def swap_elements arr, i, j
            aux = arr[i]
            arr[i] = arr[j]
            arr[j] = aux
        end
    end
end