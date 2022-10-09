#Symbols
#É um tipo especial de objeto, é criado com dois pontos(:) no
#início de um identificador(texto puro ou string).
#Symbols são únicos globalmente e imutáveis.
#Aloca o objeto na memória inicialmente, e quando for usar dnv
#ele vai reutilizar o mesmo objeto.
#Obs: muito útil para economizar memória e não criar uma nova
#variável com id diferente na memória.
#Ex: variavel = "caio" , se fizer a mesma atribuição novamente
#irá criar um novo object_id. Para evitar isso usa-se 
#o :variavel

nome = "caio"
p nome.object_id

nome = "caio"
p nome.object_id #id diferente

:nome
p nome.object_id #mesmo id do de cima

dicionario = {}

dicionario["caio"] = "1"
p dicionario["caio"] #"1"
p dicionario[:caio] #nil
dicionario[:caio] = "1"
p dicionario[:"caio"] #"1", pode usar :caio ou :"caio"
