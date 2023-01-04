require './lib/date/day_week'
require 'date'

RSpec.describe PDate::DayWeek do
    it "first test: 2017-07-13" do
        input = Date.new 2017, 7, 13
        output = PDate::DayWeek.new.day_week input

        expect(output).to eql "4 i.e Thursday"
    end

    it "second test: 2012-08-15" do
        input = Date.new 2012, 8, 15
        output = PDate::DayWeek.new.day_week input

        expect(output).to eql "3 i.e Wednesday"
    end

    it "third test: 2456-12-24" do
        input = Date.new 2456, 12, 24
        output = PDate::DayWeek.new.day_week input

        expect(output).to eql "0 i.e Sunday"
    end
end