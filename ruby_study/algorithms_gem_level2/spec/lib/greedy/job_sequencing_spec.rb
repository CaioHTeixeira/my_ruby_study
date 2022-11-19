require './lib/greedy/job_sequencing'

RSpec.describe Agreedy::JobSequencing do
    it "Four Jobs passed" do
        job1 = Agreedy::JobSequencing.new('a', 4, 20).job_sequencing
        job2 = Agreedy::JobSequencing.new('b', 1, 10).job_sequencing
        job3 = Agreedy::JobSequencing.new('c', 1, 40).job_sequencing
        job4 = Agreedy::JobSequencing.new('d', 1, 30).job_sequencing 
        p job1[0][:job]
        # job_sequencing = Agreedy::JobSequencing.new(arr).job_sequencing

        expect(arr)
            .to eql "Following is maximum profit sequence of jobs: c, a, e"
    end

    it "Five Jobs passed" do 
        arr = [Agreedy::JobSequencing.new('a', 2, 100),
            Agreedy::JobSequencing.new('b', 1, 19),
            Agreedy::JobSequencing.new('c', 2, 27),
            Agreedy::JobSequencing.new('d', 1, 25),
            Agreedy::JobSequencing.new('e', 3, 15) 
        ]
        
        # job_sequencing = Agreedy::JobSequencing.new(arr).job_sequencing

        expect(arr)
            .to eql "Following is maximum profit sequence of jobs: c, a"
    end
end