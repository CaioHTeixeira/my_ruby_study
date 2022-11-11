#A=Algorithm
module Aarray
    class MissingNumber 
        def missing_number arr, value
            for i in 1..value-1 do 
                if !arr.include? i
                    return i
                end
            end 
        end
    end
end