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

arrayMethod = Array({:a => "a", :b => "b"})
print arrayMethod

arr = [1, 2, 3, 4, 5, 6]
puts arr[2, 3] #=> [3, 4, 5]
puts arr[1..4] #=> [2, 3, 4, 5]
puts arr.fetch(100, "oops") #=> "oops", não encontra a pos 100.
puts arr.take(3) #=> [1, 2, 3]
puts arr.drop(3) #=> [4, 5, 6] return n elements after 3 elements 
#have been dropped
puts arr.empty? #=> false
puts arr.include?('oi') #=> false
arr.push(7) #=> [1, 2, 3, 4, 5, 6, 7] ou arr << 7
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6, 7] add on begin
arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6, 7]
arr.pop #=> 7
arr.delete_at(2) #=> 2 remove valor do index 2
arr.delete(3) #=> 3 remove um elemento.

#matrix
empty_table = Array.new(3) { Array.new(3) } 
#=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
print empty_table

#Iterating over Arrays
arr = [1, 2, 3, 4, 5]
arr.each {|a| print a -= 10, " "}
# prints: -9 -8 -7 -6 -5
#=> [1, 2, 3, 4, 5]

arr.map {|a| 2*a}     #=> [2, 4, 6, 8, 10]

#String interpolation
print ("#{array.first}, #{array.last} ")
print ("primeiro " + "#{array.first}" + 
    "segundo" + "#{array.last}")
