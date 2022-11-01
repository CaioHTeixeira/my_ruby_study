nome = gets

p nome

nome = nome.chomp #remove o caractere especial da string(\n)

p nome

nome = gets.chomp

p nome

puts "Digite seu nome: "

nome = gets.chomp

puts "Seu nome é #{nome}."

#condicionais
valor = 20 

if valor < 20
    puts "menor"
elsif valor === 20
    puts "igual"
else 
    puts "maior"
end

#outra forma
puts "Eu sou maior que 50 " if valor > 50

#ternário
resultado = valor > 50 ? "Eu sou > 50" : "Eu sou < 50"
p resultado

#case(equivalente ao switch)
linguagem = "ruby"
case linguagem
when "ruby"
    puts "bem vindo ao curso de ruby"
when "golang"
    puts "bem vindo ao curso de golang"
else
    puts "não conheço essa linguagem"
end

#unless 
unless valor == 100 #se n for igual a 100 imprime.
    puts "o valor não é 100"
end

#logicos: ! && ||
puts "Digite um valor: "
valor = gets.chomp.to_i

if valor > 50 && valor < 100
    puts "Estou entre 50 e 100"
else
    puts "Não estou entre 50 e 100"
end

#apenas nil e false são falsos.
#Atribuição condicional de variavel
variavel = nil
variavel = "Algum valor" if variavel.nil? #só seta se variavel estiver vazia.

#outra forma
variavel = "Algum valor" if !variavel #só seta se variavel estiver vazia.

#outra forma
variavel = "Algum valor" unless variavel #só seta se variavel estiver vazia.

#forma trivial
#outra forma
variavel ||= "Algum valor" #só seta se variavel estiver vazia.