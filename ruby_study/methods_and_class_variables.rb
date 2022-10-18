class Pessoa
    @@variavel_da_classe_pessoa = 100 #(equivalente a var global) 
    #variáveis de classe são marcados por esses 2 arrobas.

    def self.valor_variavel #metodo de classe pois possui self.
        #Só fica disponível para a classe.
        @@variavel_da_classe_pessoa
    end

    def self.incrementar_valor_variavel #metodo de classe
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

class Exemplo 
    @@variavel_de_classe = "variavel de classe"

    def initialize(variavel_de_instancia)
        @variavel_de_instancia = variavel_de_instancia
    end

    def self.um_metodo_de_classe
        #faz algo
    end

    def variavel_de_instancia
        @variavel_de_instancia
    end

    def self.variavel_de_instancia
        @variavel_de_instancia
    end

    def variavel_de_classe
        @@variavel_de_classe
    end

    def self.variavel_de_classe
        @@variavel_de_classe
    end

    def faz_algo
        self.variavel_de_instancia
    end
end

exemplo = Exemplo.new("Instancia 1")
p exemplo.variavel_de_classe # => "Variável da classe"

p exemplo.variavel_de_instancia # => "Instância 1"

p Exemplo.variavel_de_classe # => "Variável da classe"
p Exemplo.variavel_de_instancia # => nil

p exemplo.faz_algo # => "Instancia 1" 

#utilizando o método class para acessar a um método de classe
class Usuario
    @@todos_usuarios = []

    def initialize(nome)
        @nome = nome
        self.class.todos << self
    end

    def self.todos
        @@todos_usuarios
    end

    def nome
        @nome
    end
end

user = Usuario.new("caio")
user2 = Usuario.new("lucas")
p Usuario.todos #<Usuario:0x000055ec440b78f0 @nome="caio">, 
#<Usuario:0x000055ec440b7468 @nome="lucas">]

p Usuario.todos[0].nome # "caio"