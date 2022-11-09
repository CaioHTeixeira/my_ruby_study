#A=Algorithm
module Asearch
    class JumpSearch
        def jump_search arr, value
            step = Math.sqrt(arr.length).floor
            index_found = -1
            arr_step_div = arr.length.div(step)
            previous_step = 0
            item = 1

            while arr[[step, arr.length].min - 1] < value do
                previous_step = step
                step += Math.sqrt(arr.length).floor
                
                if previous_step >= arr.length
                    return -1
                end
            end

            while arr[previous_step] < value do 
                previous_step += 1
                
                if previous_step == [step, arr.length].min
                    return -1
                end
            end

            if arr[previous_step] == value
                return previous_step
            end
            
            return -1
        end
    end
end