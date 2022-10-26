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

class Main
    text = "The quick brown fox jumps"

    missing_character = MissingCharacter.new
    output = missing_character.missing_character text

    p "Output: #{output}."
end