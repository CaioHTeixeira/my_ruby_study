#A = Algorithm 
module Aarray

    class MinimumProduct
        def minimum_product arr
            negative_itens = []
            minimum_product = 1

            if arr.length === 1
                return arr[0]
            end

            for item in arr
                if item < 0
                    negative_itens.push item
                end
            end

            if negative_itens.length % 2 === 0
                index_greater_negative_item = 
                    arr.find_index negative_itens.max

                arr.delete_at index_greater_negative_item
            end

            for item in arr
                next if item === 0
                minimum_product *= item
            end

            return minimum_product
        end
    end
end