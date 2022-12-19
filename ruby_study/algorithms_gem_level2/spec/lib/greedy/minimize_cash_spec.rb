require './lib/greedy/minimize_cash'

RSpec.describe Agreedy::MinimizeCash do
    it "minimized cash flow" do
        p1 = Agreedy::Account.new "conta_pessoa1"
        p2 = Agreedy::Account.new "conta_pessoa2"
        p3 = Agreedy::Account.new "conta_pessoa3"

        p1.deposit p1, 10000.0
        p2.deposit p2, 10000.0
        p3.deposit p3, 10000.0
        p p1, p2, p3

        net_definition = {
            p1: 
        }
        minimize_cash = Agreedy::MinimizeCash.new
        minimize_cash.create_net_amount 
    end
end