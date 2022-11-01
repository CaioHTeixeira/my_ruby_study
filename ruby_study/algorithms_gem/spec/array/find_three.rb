#A = Algorithm 
module AArray 

    class FindThree
    def find_three arr
        three_max = []
        third = first = second = -999

        arr.each do |item| 
            if item > first
                third = second
                second = first
                first = item
            elsif item > second
                third = second
                second = item
            elsif item > third
                third = item
            end   
        end

        three_max.push first, second, third
        
        return three_max
    end
end

    class Main
        arr = [10, 4, 3, 50, 23, 90]

        find_three = FindThree.new
        output = find_three.find_three arr

        p "Output: #{output}."
    end
end