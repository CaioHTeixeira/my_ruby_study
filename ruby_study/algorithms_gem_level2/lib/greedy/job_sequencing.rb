#A=Algorithm
module Agreedy
    class JobSequencing
        attr_accessor :job, :deadline, :profit
        @@arr = []

        def set_job_sequencing job, deadline, profit
            @job = job
            @deadline = deadline
            @profit = profit
            @@arr << self
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

                    j -= 1
                end
            end

            job.join
        end
    end
end