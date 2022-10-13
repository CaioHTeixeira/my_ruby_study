require "./conta"

class ContaCorrente < Conta
    
    def initialize(nome, cpf)
        super
    end

    def transferir(conta, valor)
        @saldo -= valor 
        conta.saldo += valor
    end
end