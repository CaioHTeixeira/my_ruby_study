#A=Algorithm
module Agreedy
    class MinimizeCash
        def initialize
            @output = []
        end

        def minimize_cash graph
            number_of_persons = 3

            amount = Array.new number_of_persons, 0
     
            for p in 0..number_of_persons-1 do
                for i in 0..number_of_persons-1 do
                    amount[p] += (graph[i][p] - graph[p][i])
                end
            end
        
            min_cash_flow_rec(amount)
        end

        def get_min arr
            min_index = arr.find_index arr.min
            min_index
        end

        def get_max arr
            max_index = arr.find_index arr.max
            max_index
        end

        def min_cash_flow_rec amount
    
            mx_credit = get_max(amount) 
            mx_debit = get_min(amount)
        
            return @output if (amount[mx_credit] == 0 && amount[mx_debit] == 0)
                
        
            min = [-amount[mx_debit], amount[mx_credit]].min
            amount[mx_credit] -= min;
            amount[mx_debit] += min;
        
            @output << " Person #{mx_debit} pays #{min} to Person #{mx_credit}"
        
            min_cash_flow_rec amount
        end
    end
end