#P=problem
module Pstring
    class MissingCharacter
        def missing_character text
            output = ""

            ("a".."z").each do |letter|
                if !text.downcase.include?(letter) 
                    output += letter
                end
            end

            output
        end
    end
end