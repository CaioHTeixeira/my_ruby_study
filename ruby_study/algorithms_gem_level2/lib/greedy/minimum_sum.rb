#A=Algorithm
module Agreedy
    class MinimumSum
        def minimum_sum a, b, k
            output = 0
            higher_diff = 0

            a.each_with_index do |item, index| 
                current_prod = item * b[index]
                output += current_prod

                if current_prod < 0 && b[index] < 0
                    temp = (a[index] + k*2) * b[index]
                elsif current_prod < 0 && a[index] < 0 
                    temp = (a[index] - k*2) * b[index]
                elsif current_prod > 0 && a[index] < 0
                    temp = (a[index] + k*2) * b[index]
                elsif current_prod > 0 && a[index] > 0
                    temp = (a[index] - k*2) * b[index]
                end 

                diff = current_prod - temp

                higher_diff = diff if diff > higher_diff
            end

            output - higher_diff
        end
    end
end