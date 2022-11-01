class ContaComTaxa < Conta
    TAXA = 2 #constante no ruby é tudo maiúsculo.

    def self.taxa #método de classe
        2
    end

    def transferir(outra_conta, valor)
        super(outra_conta, valor) #pode chamar só super q dá certo. Ele
        #faz a transferencia utilizando a func transferir da classe pai.
        debitar(TAXA) #ou ContaComTaxa.taxa
    end
end