#A = Algorithm 
module Aarray

    class MinimumSum
        def minimum_sum arr
            min_value = arr.min

            min_value * (arr.length - 1)
        end
    end
end