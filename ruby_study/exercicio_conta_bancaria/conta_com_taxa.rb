class ContaComTaxa < Conta
    
    def initialize(nome, cpf)
        super
    end

    def transferir(outra_conta, valor)
        debitar(2)
        super(outra_conta, valor)
    end

    
end