require "./conta"
require "./conta_corrente"
require "./conta_poupanca"
require "./conta_com_taxa"

class Main
    conta = Conta.new("caio", 122122122)
    conta_poupanca = ContaPoupanca.new("caio", 122122122)
    conta_corrente = ContaCorrente.new("Lucas", 33333333)
    conta_com_taxa = ContaComTaxa.new("Alexandre", 44444444)

    conta_com_taxa.depositar(conta_com_taxa, 250)
    conta_com_taxa.transferir(conta_poupanca, 100)
    # conta_poupanca.depositar(250)
    # conta_poupanca.transferir(conta_corrente, 100)

    # p conta_corrente.saldo
    p conta_poupanca.saldo
    p conta_com_taxa.saldo
end
