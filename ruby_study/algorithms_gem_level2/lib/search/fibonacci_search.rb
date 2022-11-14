#A=Algorithm
module Asearch
    class FibonacciSearch
        def fibonacci_search arr, value, arr_length
            offset = -1
            fib_M2 = 0
            fib_M1 = 1
            fib_M = fib_M1 + fib_M2

            while fib_M < arr_length do
                fib_M2 = fib_M1
                fib_M1 = fib_M
                fib_M = fib_M2 + fib_M1
            end

            while fib_M > 1 do
                i = offset + fib_M2 < arr_length - 1 ? offset + fib_M2
                    : arr_length - 1
                    
                if arr[i] < value
                    fib_M = fib_M1
                    fib_M1 = fib_M2
                    fib_M2 = fib_M - fib_M1
                    offset = i
                elsif arr[i] > value
                    fib_M = fib_M2
                    fib_M1 -= fib_M2
                    fib_M2 = fib_M - fib_M1
                else
                    return i
                end
            end

            if fib_M1 == 1 && arr[arr_length-1] == value
                arr_length - 1
            end

            -1
        end
    end
end