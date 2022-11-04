require 'date'

#P = Problem 
module Pdate
    class CalculateAge
        def calculate_age birth_date, present_date
            age = Hash.new 

            year = present_date.year - Date.strptime(birth_date, '%d-%m-%Y').year
            month = present_date.month - Date.strptime(birth_date, '%d-%m-%Y').month
            day = present_date.day - Date.strptime(birth_date, '%d-%m-%Y').day
            
            age[:year] = year
            age[:month] = month
            age[:day] = day

            return age
        end
    end
end