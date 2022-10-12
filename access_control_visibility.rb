#Conteúdo: public, protected and private

#private: Só podem ser chamados dentro de sua própria instância.
# Não é possível acessar métodos privados de outras instancias.

#Ex: Considere as classes MinhaClasse(metodos m2,m3 privados) 
#e Principal.
#Métodos privados podem ser chamados nas subclasses.

#protected: Podem ser chamados por qualquer instância se for da
# mesma Classe/SuperClasse. 

#public: Podem ser acessados por qualquer método em qualquer 
#objeto. 

class MinhaClasse
    def m1
        puts "Metodo 1"
        m2() #não dá erro pois m1 é publico e a partir dele 
        #consegue-se acessar os métodos privados.
        m3 
        #faz o encapsulamento dos metodos m2 e m3 e deixa 
        #apenas m1 acessá-los.
    end

    private #define todos metodos pra baixo como privados.
    # Para definir apenas um metodo como privado: private def m2
    def m2 
        puts "Metodo 2"
    end

    def m3
        puts "Metodo 3"
    end

    protected #não aceita inline
    def m5
        puts "Metodo 5"
    end
end

class MinhaSubClasse < MinhaClasse
    def m4
        m1()
        puts "Metodo 4"
        m5 #consegue chamar pq herdou
        m3 #tbm consegue chamar o metodo privado

        outro_obj = MinhaClasse.new
        outro_obj.m5 #nesse caso n deixa acessar metodo m5,
        #apenas com o protected/public.
    end
end

#a partir daqui é outro contexto
obj = MinhaClasse.new
obj.m1
#obj.m2 #vai falhar pois é privado(só é acessado dentro da classe).
#obj.m3 #vai falhar pois é privado(só é acessado dentro da classe).

obj2 = MinhaSubClasse.new
obj2.m4