require './lib/greedy/job_sequencing'

RSpec.describe Agreedy::JobSequencing do
    it "Four Jobs passed" do
        Agreedy::JobSequencing.new.set_job_sequencing('a', 4, 20)
        Agreedy::JobSequencing.new.set_job_sequencing('b', 1, 10)
        Agreedy::JobSequencing.new.set_job_sequencing('c', 1, 40)
        Agreedy::JobSequencing.new.set_job_sequencing('d', 1, 30)
        
        arr = Agreedy::JobSequencing.new.arr_job
        job_sequencing = Agreedy::JobSequencing.new.job_sequencing arr

        expect(job_sequencing)
            .to eql "c, a, e"
    end

    it "Five Jobs passed" do 
        Agreedy::JobSequencing.new.set_job_sequencing('a', 2, 100)
        Agreedy::JobSequencing.new.set_job_sequencing('b', 1, 19)
        Agreedy::JobSequencing.new.set_job_sequencing('c', 2, 27)
        Agreedy::JobSequencing.new.set_job_sequencing('d', 1, 25)
        Agreedy::JobSequencing.new.set_job_sequencing('e', 3, 15) 
        
        arr = Agreedy::JobSequencing.new.arr_job
        job_sequencing = Agreedy::JobSequencing.new.job_sequencing arr

        expect(job_sequencing)
            .to eql "c, a"
    end
end