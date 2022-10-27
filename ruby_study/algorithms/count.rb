class Count
    def count_character input
        lowercase_amount = uppercase_amount = 0
        special_characters_amount = numeric_values_amount = 0
        output = { lowercase_amount: 0, uppercase_amount: 0, 
            special_characters_amount: 0, numeric_values_amount: 0}

        input_array = input.chomp.split('')
        
        input_array.each do |item|
            if ("a".."z").to_a.include? item
                ("a".."z").each do |lowercase|
                    if lowercase === item
                        lowercase_amount += 1
                    end
                end
            elsif ("A".."Z").to_a.include? item 
                ("A".."Z").each do |uppercase|
                    if uppercase === item
                        uppercase_amount += 1
                    end
                end
            elsif ("0".."9").to_a.include? item 
                ("0".."9").each do |numeric|
                    if numeric == item
                        numeric_values_amount += 1
                    end
                end
            else
                special_characters_amount += 1
            end            
        end   
        
        output[:lowercase_amount] = lowercase_amount
        output[:uppercase_amount] = uppercase_amount
        output[:special_characters_amount] = special_characters_amount
        output[:numeric_values_amount] = numeric_values_amount

        return output
    end
end

class Main
    input = "#GeeKs01fOr@gEEks07"

    count_character = Count.new
    output = count_character.count_character input

    p "Output lowercase: #{output[:lowercase_amount]}."
    p "Output uppercase: #{output[:uppercase_amount]}."
    p "Output special characters: #{output[:special_characters_amount]}."
    p "Output numeric values: #{output[:numeric_values_amount]}."
end