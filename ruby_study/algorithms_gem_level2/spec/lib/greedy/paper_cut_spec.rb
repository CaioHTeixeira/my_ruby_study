require './lib/greedy/paper_cut'

RSpec.describe Agreedy::PaperCut do 
    it "Input 13 x 29 test" do
        height = 29
        width = 13

        paper_cut = Agreedy::PaperCut.new height, width
        output = Agreedy::PaperCut.new.paper_cut paper_cut
        
        expect(output).to eql 9
    end

    it "Input 4 x 5 test" do
        height = 4
        weight = 5

        paper_cut = Agreedy::PaperCut.new height, width
        output = Agreedy::PaperCut.new.paper_cut paper_cut

        expect(output).to eql 5
    end
end