require 'pry'

class PigLatinizer 

    def piglatinize(words)
        sentence = ""

        array = words.split(" ")
        array.each do |word|


            if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
                way_word = word + "way"
                sentence += way_word + " "
            else 
                vowel_split = word.split(/([aeiou].*)/) 
                ay_word = vowel_split[1] + vowel_split[0] + "ay"
                sentence += ay_word + " "
            end 

        end 
        return sentence.sub(/\s+\Z/,"")
    end 
    
end

