require './lib/greedy/job_sequencing'

RSpec.describe Agreedy::JobSequencing do
    it "Four Jobs passed" do
        Agreedy::JobSequencing.new('a', 4, 20)
        Agreedy::JobSequencing.new('b', 1, 10)
        Agreedy::JobSequencing.new('c', 1, 40)
        Agreedy::JobSequencing.new('d', 1, 30)
        
        arr = Agreedy::JobSequencing.new.arr_job
        job_sequencing = Agreedy::JobSequencing.new.job_sequencing arr

        expect(job_sequencing).to eql "c, a, e"
    end

    it "Five Jobs passed" do 
        Agreedy::JobSequencing.new('a', 2, 100)
        Agreedy::JobSequencing.new('b', 1, 19)
        Agreedy::JobSequencing.new('c', 2, 27)
        Agreedy::JobSequencing.new('d', 1, 25)
        Agreedy::JobSequencing.new('e', 3, 15) 
        
        arr = Agreedy::JobSequencing.new.arr_job
        job_sequencing = Agreedy::JobSequencing.new.job_sequencing arr

        expect(job_sequencing).to eql "c, a"
    end
end