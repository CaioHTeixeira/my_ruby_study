arr = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]

def linear_search(arr, value)
    found_item = false
    
    arr.each do |item|
        if item === value
            found_item = true
            return arr.find_index(item)
        end
    end
    
    -1 if !found_item
end

p linear_search(arr, 110)