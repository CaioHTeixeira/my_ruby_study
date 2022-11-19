#A=Algorithm
module Agreedy
    class JobSequencing
        attr_accessor :job, :deadline, :profit
        @@arr = []

        def initialize job, deadline, profit
            @job = job
            @deadline = deadline
            @profit = profit
        end

        def job_sequencing
            @@arr << self
            @@arr
        end
    end
end