#A=Algorithm
module Agreedy
    class JobSequencing
        attr_accessor :job, :deadline, :profit
        @@arr = []

        def initialize job = nil, deadline = nil, profit = nil
            @job = job if job != nil
            @deadline = deadline if deadline != nil
            @profit = profit if profit != nil
            @@arr << self if job != nil
        end

        def arr_job
            @@arr
        end

        def job_sequencing arr
            t = 3
            result = Array.new t, false
            job = Array.new t
            arr.sort_by! { |item| item.profit }.reverse!

            for i in 0..arr.length - 1 do
                last_slot = [t - 1, arr[i].deadline - 1].min

                for j in last_slot..0 do
                    if result[j] == false
                        result[j] = true
                        job[j] = arr[i].job
                        break
                    end
                end 
            end

            @@arr = []

            job.join
        end
    end
end