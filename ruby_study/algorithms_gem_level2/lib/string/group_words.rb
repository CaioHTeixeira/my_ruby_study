module Pstring
    class GroupWords
        def group_words arr
            output = ""
            group_words_array = []
            item_is_included = nil

            for i in 0..arr.length-2 do
                splited_item = arr[i].split("")
                group_words_array << arr[i] if not
                    group_words_array.include? arr[i]

                for j in i+1..arr.length-1 do
                    splited_item2 = arr[j].split("")

                    for item in splited_item2 do
                        item_is_included = arr[i].include? item

                        break if item_is_included == false
                    end 

                    if item_is_included == true
                        group_words_array << arr[j] if not 
                            group_words_array.include? arr[j]
                    end
                end

                group_words_array << "\n" 
            end
            
            output = group_words_array.join(", ").delete(" ")

            output
        end
    end
end