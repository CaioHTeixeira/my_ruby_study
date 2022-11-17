require './lib/greedy/job_sequencing'

RSpec.describe Agreedy::JobSequencing do
    it "Four Jobs passed" do
        input = "Four Jobs with following deadlines and profits"
        job_sequencing = Agreedy::JobSequencing.new
            .job_sequencing input

        expect(job_sequencing)
            .to eql "Following is maximum profit sequence of jobs: c, a"
    end

    it "Five Jobs passed" do
        input = "Five Jobs with following deadlines and profits"
        job_sequencing = Agreedy::JobSequencing.new
            .job_sequencing input
        
        expect(job_sequencing)
            .to eql "Following is maximum profit sequence of jobs: c, a, e"
    end
end