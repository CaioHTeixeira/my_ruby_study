require 'date'

#P = Problem 
module Pdate
    class CalculateAge
        def calculate_age birth_date, present_date
            age = Hash.new 
            month = [31, 28, 31, 30, 31, 30, 31,
                31, 30, 31, 30, 31]

            birth_year = Date.strptime(birth_date, '%d-%m-%Y').year
            birth_month = Date.strptime(birth_date, '%d-%m-%Y').month
            birth_day = Date.strptime(birth_date, '%d-%m-%Y').day
            current_day = present_date.day
            current_month = present_date.month
            current_year = present_date.year

            if birth_day > current_day
                current_month -= 1
                current_day += month[birth_month - 1]
            end

            if birth_month > current_month
                current_year -= 1
                current_month += 12
            end

            year = current_year - birth_year
            month = current_month - birth_month
            day = current_day - birth_day
            
            age[:year] = year
            age[:month] = month
            age[:day] = day

            return age
        end
    end
end