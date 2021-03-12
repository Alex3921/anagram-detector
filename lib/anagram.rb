# Your code goes here!
class Anagram
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def match(array)
        new_array = []
        array.each do |word|
            if word.split("").sort == @name.split("").sort
                new_array << word
            end
        end
        return new_array
    end
end
