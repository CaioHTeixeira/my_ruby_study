class Pessoa
    @@variavel_da_classe_pessoa = 100 #(equivalente a var global) 
    #variáveis de classe são marcados por esses 2 arrobas.

    def self.valor_variavel
        @@variavel_da_classe_pessoa
    end

    def self.incrementar_valor_variavel
        @@variavel_da_classe_pessoa += 1
    end

    def self.gerar #só irá ficar disponivel para classe e não 
        #para as instancias do objeto.
        puts "estou gerando uma nova pessoa"
        Pessoa.new
    end
end

#Métodos de classe não podem ser chamados em objetos específicos.
#Ex: pessoa = Pessoa.new
#    pessoa.gerar #vai ocorrer um erro.
Pessoa.gerar
p Pessoa.incrementar_valor_variavel