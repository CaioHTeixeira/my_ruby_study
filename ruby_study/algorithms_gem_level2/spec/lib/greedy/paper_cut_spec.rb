require './lib/greedy/paper_cut'

RSpec.describe Agreedy::PaperCut do 
    it "Input 13 x 29 test" do
        width = 13
        height = 29

        paper_cut = Agreedy::PaperCut.new #width, height
        output = paper_cut.paper_cut width, height
        
        expect(output).to eql 9
    end

    it "Input 4 x 5 test" do
        width = 4
        height = 5

        paper_cut = Agreedy::PaperCut.new #width, height
        output = paper_cut.paper_cut width, height

        expect(output).to eql 5
    end
end