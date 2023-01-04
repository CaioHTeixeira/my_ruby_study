#P=Problem
module PDate
    class DayWeek
        def day_week date
            t = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
            days_of_the_week = ["Sunday", "Monday", "Tuesday", "Wednesday",
                "Thursday", "Friday", "Saturday"]
            day = date.day
            month = date.month
            year = date.year
            
            year -= 1 if month < 3
            
            index_of_day = 
                (year + year / 4 - year / 100 + year / 400 + t[month - 1] + day) % 7

            output = 
                "#{index_of_day} i.e #{days_of_the_week[index_of_day]}"

            output
        end
    end
end