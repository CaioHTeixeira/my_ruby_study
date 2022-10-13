class Conta
    
    attr_accessor :nome
    attr_accessor :cpf
    attr_accessor :saldo

    def initialize(nome, cpf)
        @saldo = 0
        @nome = nome
        @cpf = cpf
    end

    def transferir(outra_conta, valor)
        if @saldo >= valor
            debitar(valor) 
            depositar(outra_conta, valor)
        else
            puts "Saldo Insuficiente"
        end
    end

    

    def depositar(outra_conta, valor)
        outra_conta.saldo += valor
    end

    def debitar(valor)
        @saldo -= valor
    end
end