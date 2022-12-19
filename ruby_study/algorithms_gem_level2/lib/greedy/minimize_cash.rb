#A=Algorithm
module Agreedy
    class Account
        attr_accessor :name, :balance

        def initialize name
            @name = name
            @balance = 0.0
        end

        def transfer other_account, value
            if @balance >= value
                debit(value)
                deposit(other_account, value)
            else
                raise "Saldo insuficiente"
            end
        end
        
        def deposit other_account, value
            other_account.balance += value
        end

        def debit value
            @balance -= value
        end
    end

    class MinimizeCash
        def initialize
            
        end

        def create_net_amount
            
        end
        def minimize_cash
            
        end
    end
end