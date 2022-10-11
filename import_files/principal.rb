require "./classes/carro"
require "./classes/pessoa"

pessoa = Pessoa.new("Caio")
carro = Carro.new("carro", pessoa)

p pessoa
p carro

#gem install para instalação de bibliotecas.