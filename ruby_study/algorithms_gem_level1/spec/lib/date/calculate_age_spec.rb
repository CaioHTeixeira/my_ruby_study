require './lib/date/calculate_age'
require 'date'

RSpec.describe Pdate::CalculateAge do
    birth_date = "28-01-1996"
    present_date = Date.today

    calculate_age = Pdate::CalculateAge.new
        .calculate_age birth_date, present_date

    it "year is correct" do
        expect(calculate_age[:year]).to eql 26        
    end

    it "month is correct" do
        expect(calculate_age[:month]).to eql 11
    end

    it "day is correct" do
        expect(calculate_age[:day]).to eql 22
    end
end