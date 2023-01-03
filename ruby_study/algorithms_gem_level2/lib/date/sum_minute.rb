#P=Problem
module PDate
    class SumMinute
        def sum_minute time, k
            splitted_time = time.split(":")
            hours = splitted_time[0].to_i
            minutes = splitted_time[1].to_i

            hours_in_minutes = hours_to_min(hours)

            total_time_after_k_minutes = hours_in_minutes + minutes + k

            fractional_hours_after_k_minutes = 
                minutes_to_hour(total_time_after_k_minutes)

            fractional_hours_parts = 
                fractional_hours_after_k_minutes.to_s.split(".")
            final_hours = fractional_hours_parts[0].to_i
            final_minutes = 
                hours_to_min("0.#{fractional_hours_parts[1]}".to_f.round(2)).to_i
            final_minutes = "0#{final_minutes}" if final_minutes < 10

            while final_hours >= 24 do
                final_hours -= 24
            end

            final_hours = "0#{final_hours}" if final_hours < 10

            output = "#{final_hours}:#{final_minutes}" 

            output
        end

        def hours_to_min hour
            hour * 60
        end

        def minutes_to_hour min
            min.fdiv(60)
        end
    end
end