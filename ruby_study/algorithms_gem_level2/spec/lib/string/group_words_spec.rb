require './lib/string/group_words'

RSpec.describe Pstring::GroupWords  do
    it "grouped words test " do
        input = [ "may", "student", "students", "dog",
            "studentssess", "god", "cat", "act",
            "tab", "bat", "flow", "wolf", "lambs",
            "amy", "yam", "balms", "looped", 
            "poodle" ]

        output = Pstring::GroupWords.new.group_words input
        expected_output = 
            "looped, poodle, 
            lambs, balms, 
            flow, wolf, 
            tab, bat, 
            may, amy, yam, 
            student, students, studentssess, 
            dog, god, 
            cat, act,"

        expect(output).to eql expected_output 
    end
end