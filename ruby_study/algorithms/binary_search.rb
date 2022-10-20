arr = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]

def binary_search(arr, value)
    index_partitioned = (arr.length-1) / 2

    arr.find_index(value) if value === arr[index_partitioned]
        
    if value > arr[index_partitioned]
        index_initial = index_partitioned + 1
    else value < arr[index_partitioned]
        index_final =index_partitioned - 1
    end

end

binary_search(arr, 110)