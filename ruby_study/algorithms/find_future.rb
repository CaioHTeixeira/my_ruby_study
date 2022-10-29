require 'date'

class FindFuture
    def find_future arr, query, q
        arr.each_with_index do |item, index|
            value = item.chomp
            p value
            arr[index] = Date.strptime ("#{value}", '%d-%m-%Y')
        end

        query.each do |item| 
            
        end        
    end

end

class Main
    arr = ["22-4-1233", "1-3-633", "23-5-56645", "4-12-233"]
    q = 2
    query = ["23-3-4345", "12-3-2"]

    find_future = FindFuture.new
    output = find_future.find_future arr, query, q

    p "Output: #{output}."
end