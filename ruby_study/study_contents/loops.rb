#while
valor = 5
while valor > 0 
    puts valor
    valor -= 1
end

#for
for i in [1,2,3,4,5]
    puts "O numero é #{i}"
end

#range
range = 0..5
for i in range
    puts "O numero é #{i}"
end

#each
lista = [0,1,2,3,4,5]

lista.each do |meu_valor|
    puts "Meu valor é #{meu_valor}"
end

#each com hash
hash = {nome: "caio", idade: 26}

hash.each do |chave, valor| #se tiver apenas 1 valor: [:nome, "caio"]. 
    #Ex: |valor| virá no formato chave-valor em array [:nome, "caio"].
    puts "A chave é: #{chave}, com o valor #{valor}."
end

#until(semelhante ao while, porém só executa quando condição é falsa)
valor = 0
until valor == 10
    puts valor
    valor += 1
end

#break: sai do laço
valor = 0
while valor < 10
    puts valor
    
    break if valor == 5

    valor += 1
end
#return: sai do laço e do método onde o laço está contido
#next: vai para a próxima iteração.
#redo: repete o laço do início(a condição não será reavaliada).