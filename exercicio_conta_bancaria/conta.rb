class Conta
    
    #attr_accessor id
    attr_accessor :nome
    attr_accessor :cpf

    def initialize(nome, cpf)
        @nome = nome
        @cpf = cpf
    end

    def transferir(conta, valor)
    end

    def print
        puts "oi"
    end
end