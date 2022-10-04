puts "hello world" #imprime e quebra linha

#function
def sum(a, b) 
    a + b  #return é opcional para um valor.
end

soma = sum(3,2)

print("A soma dos valores é: ", soma) #não quebra linha

#Creating arrays
array = [1, "caio", nil, 1.2, true]
array2 = Array.new #=>[]
array3 = Array.new(3) #=> [nil, nil, nil]
array4 = Array.new(3, true) #=> [true, true, true]
array5 = Array.new(4) {Hash.new} #=>[{},{},{},{}]
array6 = Array.new(4) {|i| i.to_s} #=>[{"0"},{"1"},{"2"},{"3"}]
puts array.length #parenteses são opcionais para chamada
puts array6