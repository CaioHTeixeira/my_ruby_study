#A=Algorithm
module Aarray
    class MissingNumber 
        def missing_number arr, value
            temp_array = Array.new(value + 1, 0)
            temp_array[0] = 1
            missing_number = -1

            arr.each_with_index do |item, index| 
                temp_array[item] = 1 if temp_array[item] == 0                    
            end 

            temp_array.each_with_index do |item, index|
                missing_number = index if item == 0
            end

            missing_number
        end
    end
end