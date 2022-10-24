class MinimumSum
    def minimum_sum arr
        min_value = arr.min

        return min_value * (arr.length - 1)
    end
end

class Main
    arr = [2, 4, 1, 3]

    minimum_sum = MinimumSum.new
    output_minimum_sum = minimum_sum.minimum_sum arr

    p "Output: #{output_minimum_sum}."
end