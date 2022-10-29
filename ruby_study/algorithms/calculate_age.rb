require 'date'

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

class Main 
    birth_date = "07-09-1996"
    present_date = Date.today

    calculate_age = CalculateAge.new
    output = calculate_age.calculate_age birth_date, present_date

    p "Output: years: #{output[:year]}."
    p "Output: months: #{output[:month]}."
    p "Output: days: #{output[:day]}."
end