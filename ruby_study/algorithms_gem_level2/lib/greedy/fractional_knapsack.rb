#A=Algorithm
module Agreedy
    class FractionalKnapsack
        def fractional_knapsack arr, w
            output = 0
            sum_weight = 0

            arr.sort_by! { |item| item[:value] / item[:weight] }.reverse!

            arr.each_with_index do |item, index|
                if sum_weight + arr[index][:weight] <= w
                    sum_weight += item[:weight]
                    output += item[:value] 
                elsif sum_weight + arr[index][:weight] > w
                    missing_value = w - sum_weight
                    fraction = missing_value.fdiv arr[index][:weight]
                    output += fraction * arr[index][:value]
                end 
            end

            output.round 3
        end
    end
end