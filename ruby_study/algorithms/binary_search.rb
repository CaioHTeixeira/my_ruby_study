class BinarySearch

    def binary_search(array, left, right, value)
        if right >= left
            mid = left + (right - left).div(2);
            p mid
            mid if value === array[mid]
                
            if value > array[mid]
                p array[mid]
                binary_search(array, mid+1, right, value)
            end
            
            binary_search(array, left, mid-1, value)
        end

        return -1
    end
end

class Main
    arr = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
    array_length = arr.length
    value = 110

    binary_search = BinarySearch.new
    p binary_search.binary_search(arr, 0, array_length - 1, value)
end