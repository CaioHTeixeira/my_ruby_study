class FindMaximum
    def find_maximum stack1, stack2, stack3
        if stack1.sum === stack2.sum and stack1.sum === stack3.sum
            return stack1.sum
        end

        if stack1.sum >= stack2.sum and stack1.sum >= stack3.sum
            stack1.shift()
            return find_maximum stack1, stack2, stack3
        elsif stack2.sum >= stack1.sum and stack2.sum >= stack3.sum
            stack2.shift()
            return find_maximum stack1, stack2, stack3
        else
            stack3.shift()
            return find_maximum stack1, stack2, stack3
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