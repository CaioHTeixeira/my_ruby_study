require "./conta"
require "./conta_corrente"
require "./conta_poupanca"

class Main
    conta = Conta.new("caio", 122122122)

    p conta.print
end
