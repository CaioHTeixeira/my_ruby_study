#A=Algorithm
module Asort
    class MergeSort
        def merge arr, left, mid, right
            # Find sizes of two subarrays to be merged
            n1 = mid - left + 1
            n2 = right - mid

            # Create temp arrays 
            left_arr = Array.new n1
            right_arr = Array.new n2

            #Copy data to temp arrays
            for i in 0..n1 do
                left_arr[i] = arr[left + i]
            end
            
            for j in 0..n2 do
                right_arr[j] = arr[mid + 1 + j]
            end
            #Merge the temp arrays 
    
            # Initial indexes of first and second subarrays
            i = 0 
            j = 0
    
            #Initial index of merged subarray array
            k = left

            while ((i < n1) && (j < n2)) do
                
                if left_arr[i] <= right_arr[j]
                    arr[k] = left_arr[i]
                    i += 1
                else
                    arr[k] = right_arr[j]
                    j += 1
                end
                k += 1
            end
    
            #Copy remaining elements of left_array[] if any 
            while i < n1 do
                arr[k] = left_arr[i]
                i += 1
                k += 1
            end
    
            #Copy remaining elements of right_array[] if any 
            while j < n2 do
                arr[k] = right_arr[j]
                j += 1
                k += 1
            end
        end

        def sort arr, left, right
            if left < right
                #Find the middle point
                mid = left + (right - left).div(2)
     
                #Sort first and second halves
                sort(arr, left, mid)
                sort(arr, mid + 1, right)
     
                #Merge the sorted halves
                merge(arr, left, mid, right)
            end

            arr
        end
    end
end