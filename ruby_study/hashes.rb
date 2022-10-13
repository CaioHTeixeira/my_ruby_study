hash = {} #ou hash = Hash.new

h = {"nome" => "caio", "idade" => 26}
p h["nome"]

#Usando symbols para economizar memória
h = {:nome => "caio", :"idade"=> 26}
p h[:nome]

#modelo mais simplificado
h = {nome: "caio", idade: 26} #também usa o symbol e sem =>
p h[:nome]

h[:nome] = "lucas"
p h #{:nome=>"lucas", :idade=>26}

h[42] = "oi"
p h[42]

p h.keys #retorna um array com as chaves.
p h.values #retorna um array com os valores.
p h.empty?
p hash.empty?