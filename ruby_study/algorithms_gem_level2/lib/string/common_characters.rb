#P=Problem
module Pstring
    class CommonCharacters
        def common_characters arr
            array_letters = arr[0].split('')
            boolean_array_output = Array.new 
            output_values = Array.new

            for i in array_letters do
                asc_value_letter = i.ord - 97
                for j in 1..arr.length-1 do
                    if arr[j].include? i
                        if boolean_array_output[asc_value_letter] == true || 
                            boolean_array_output[asc_value_letter] == nil 
                                boolean_array_output[asc_value_letter] = true
                        end
                    else
                        boolean_array_output[asc_value_letter] = false
                    end
                end
            end

            boolean_array_output.each_with_index do |item, index|
                output_values << (index + 97).chr if item == true
            end

            output_values.join(', ')
        end
    end
end