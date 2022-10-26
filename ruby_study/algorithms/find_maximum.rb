class FindMaximum
    def find_maximum stack1, stack2, stack3
        sum1 = stack1.sum
        sum2 = stack2.sum
        sum3 = stack3.sum

        while true
            if (stack1.length === 0 || stack2.length === 0 || stack3.length === 0)
                return 0
            end

            if sum1 === sum2 and sum1 === sum3
                return sum1
            end

            if sum1 >= sum2 and sum1 >= sum3
                sum1 -= stack1[0]
                stack1.delete_at(0)
            elsif sum2 >= sum1 and sum2 >= sum3
                sum2 -= stack2[0]
                stack2.delete_at(0)
            else
                sum3 -= stack3[0]
                stack2.delete_at(0)
            end
        end
    end
end

class Main
    stack1 = [3, 6]
    stack2 = [4, 5]
    stack3 = [2, 1, 8]

    find_maximum = FindMaximum.new
    output = find_maximum.find_maximum stack1, stack2, stack3

    p "Output: #{output}."
end

#forma menor que implementei, porém que consome mais memória.
# def find_maximum stack1, stack2, stack3
#     if stack1.sum === stack2.sum and stack1.sum === stack3.sum
#         return stack1.sum
#     end

#     if stack1.sum >= stack2.sum and stack1.sum >= stack3.sum
#         stack1.shift()
#         return find_maximum stack1, stack2, stack3
#     elsif stack2.sum >= stack1.sum and stack2.sum >= stack3.sum
#         stack2.shift()
#         return find_maximum stack1, stack2, stack3
#     else
#         stack3.shift()
#         return find_maximum stack1, stack2, stack3
#     end
# end