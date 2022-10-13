class Conta
    
    #attr_accessor id
    attr_accessor :nome
    attr_accessor :cpf
    attr_accessor :saldo

    def initialize(nome, cpf)
        @saldo = 150
        @nome = nome
        @cpf = cpf
    end
end