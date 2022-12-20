require './lib/greedy/minimize_cash'

RSpec.describe Agreedy::MinimizeCash do
    it "minimized cash flow" do
        graph = [ [0, 1000, 2000],
                  [0, 0, 5000],
                  [0, 0, 0]]

        output = Agreedy::MinimizeCash.new.minimize_cash graph
        
        output = output.join(',')

        expect(output)
            .to eql " Person 1 pays 4000 to Person 2, Person 0 pays 3000 to Person 2"
    end
end