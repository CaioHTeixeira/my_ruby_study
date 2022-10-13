require "./conta"
require "./conta_corrente"
require "./conta_poupanca"

class Main
    conta = Conta.new("caio", 122122122)
    conta_poupanca = ContaPoupanca.new("caio", 122122122)
    conta_corrente = ContaCorrente.new("Lucas", 33333333)
    # p conta
    conta_poupanca.transferir(conta_corrente, 100)

    p conta_corrente.saldo
    p conta_poupanca.saldo
end
