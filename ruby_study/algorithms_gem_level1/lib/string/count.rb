#P=problem
module Pstring
    class Count
        def count_character input
            lowercase_amount = uppercase_amount = 0
            special_characters_amount = numeric_values_amount = 0
            output = { lowercase_amount: 0, uppercase_amount: 0, 
                special_characters_amount: 0, numeric_values_amount: 0}

            input_array = input.chomp.split('')
            
            input_array.each do |item|
                item_in_ascii = item.ord

                if item_in_ascii >= 97 && item_in_ascii <= 122                
                    lowercase_amount += 1
                elsif item_in_ascii >= 65 && item_in_ascii <= 90 
                    uppercase_amount += 1
                elsif item_in_ascii >= 48 && item_in_ascii <= 57 
                    numeric_values_amount += 1
                else
                    special_characters_amount += 1
                end            
            end   
            
            output[:lowercase_amount] = lowercase_amount
            output[:uppercase_amount] = uppercase_amount
            output[:special_characters_amount] = special_characters_amount
            output[:numeric_values_amount] = numeric_values_amount

            output
        end
    end
end