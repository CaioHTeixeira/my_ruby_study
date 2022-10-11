#classe com getter e setter tradicional
class NomeDaClasse
    def initialize(nome)
        @nome = nome
    end
    
    def imprime_ola(nome)
        @nome = nome #@nome vai ser visível em toda a classe, e
        #não somente neste método. Mas n consegue acessar fora
        #da classe.
        puts "ola #{@nome}."
    end

    #getter
    def nome
        @nome
    end

    #setter
    def nome=(novo_nome)
        @nome = novo_nome
    end
end

objeto = NomeDaClasse.new("Caio do construtor.")
objeto.imprime_ola("caio do ola.")
objeto.nome = "Foo"
puts objeto.nome

#classe com getter e setter de outra forma(mais clean)
class NomeDaClasse2
    attr_accessor :nome #getter e setter.
    #attr_reader :nome  #apenas getter.
    #attr_writter :nome #apenas setter.

    def initialize(nome)
        @nome = nome
    end
    
    def imprime_ola(nome)
        @nome = nome #@nome vai ser visível em toda a classe, e
        #não somente neste método. Mas n consegue acessar fora
        #da classe.
        puts "ola #{@nome}."
    end
end

objeto = NomeDaClasse2.new("Caio do construtor.")
# objeto.imprime_ola("caio do ola.")
objeto.nome = "Foo"
puts objeto.nome