#P=Problem
module PArray
    class PositiveAndNegative
        def positive_and_negative arr
            i = 0
            j = 1

            while i < arr.length do
                if arr[i] < 0
                    while j < arr.length do
                        if arr[j] > 0
                            arr = swap arr, i, j
                            break
                        end
                        j += 2
                    end
                end
                i += 2
            end

            arr
        end

        def swap arr, i, j #swap 2 itens of array
            aux = arr[i]
            arr[i] = arr[j]
            arr[j] = aux

            arr
        end
    end
end