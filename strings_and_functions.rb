puts "hello world" #imprime e quebra linha

#function
def sum(a, b) 
    a + b  #return é opcional para um valor.
end

soma = sum(3,2)

print("A soma dos valores é: ", soma, "\n") #print n quebra linha

#String interpolation
p ("O valor da soma é: #{soma}.")
p ("Soma: " + "#{soma}. " + 
    "Soma duplicada: " + "#{2*soma}")

nome = "Caio"
p nome[0] #=> "C"
p nome[-1] #=> "o" pega o ultimo índice, -2 pega o penultimo.
p nome.chars #=> ["C", "a", "i", "o"] retorna vetor de char
p nome[0,2] #=> "Ca". Pega as duas primeiras letras(indice 0 e 1)

p "-" * 10 #=> "----------"

#formatar numero
numero = 42
puts "O numero é: %05d" % numero #=> 00042

#strip: formatar espaços em branco
nome = "       Caio       "
p nome.strip #=> "Caio"

#upcase
p nome.upcase #=> "     CAIO     " (imutável, vai gerar um 
#novo valor de variável pra gente)

#downcase
p nome.downcase #=> "      caio    "

#ação com !
p nome.upcase! #=> "     CAIO     " (mutável, substitui o 
#valor da variável nome já existente)

#capitalize
nome = "caio"
p nome.capitalize #=> "Caio"

#gsub
mensagem = "ola nome"
puts mensagem.gsub("nome", "caio") #=> "ola caio" troca 
# "nome" por "caio".

#split: quebra string em array através de um delimitador.
nomes = "caio lucas alexandre"
p nomes.split() #pode colocar um outro delimitador ex: "-"
p nomes