# def meu_metodo
#     puts "meu metodo foi executado"
# end

def meu_metodo(parametro1, parametro2)
    puts "Parametro 1: #{parametro1}. Parametro 2: #{parametro2}."
end

#Não é aceito a chamada com 2 métodos iguais e diferentes parâmetros.
#O ruby não suporta sobrecarga!!

# meu_metodo()
meu_metodo(22, 43)

def soma(a, b = 0) #b é opcional, caso não passe valor ele será zero.
    a + b #o return é opcional.
end

def soma_com_parametros_nomeados(valor1:, valor2: 0)
#função em que não importa a ordem dos parametros passados. Valor 2 opcional.
    soma(valor1, valor2)
end

puts soma_com_parametros_nomeados(valor2: 10, valor1: 5)