class BubbleSort
        
    def bubble_sort arr

        for item in arr do
            for item2 in arr do
                i = arr.find_index(item2)
                j = arr.find_index(item2) + 1

                unless j === arr.length
                    if arr[i] > arr[j]
                        aux = arr[i]
                        arr[i] = arr[j]
                        arr[j] = aux
                    end
                end
            end
        end

        return arr
    end
end

class Main
    arr = [5, 1, 4, 2, 8]
    
    bubbleSort = BubbleSort.new
    sorted_array = bubbleSort.bubble_sort arr
    
    puts "Sorted array: #{sorted_array}"
end