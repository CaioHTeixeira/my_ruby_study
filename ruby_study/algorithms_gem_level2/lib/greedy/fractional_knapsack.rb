#A=Algorithm
module Agreedy
    class FractionalKnapsack
        def fractional_knapsack arr, w
            output = 0
            sum_weight = 0

            arr.sort_by! { |item| item[:value] / item[:weight] }.reverse!

            
        end
    end
end