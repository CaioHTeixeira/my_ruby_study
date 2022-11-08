#P=problem
module Pstring
    class MissingCharacter
        def missing_character text
            output = ""

            ("a".."z").each_with_index do |letter, index|
                if !text.downcase.include?(letter) 
                    output += letter
                end
            end

            return output
        end
    end
end