class MinimumSum
    def minimum_sum arr
        min_value = arr.min

        return min_value * (arr.length - 1)
    end
end