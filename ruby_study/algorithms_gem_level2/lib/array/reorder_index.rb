#P=Problem
module PArray
    class ReorderIndex
        attr_accessor :arr, :arr_index
        
        def reorder_index arr, arr_index
            aux = []

            arr.each_with_index do |item, index|
                aux[index] = arr[arr_index[index]]
                arr_index[index] = index
            end
            
            @arr = aux
            @arr_index = arr_index
             
            @arr
        end
    end
end