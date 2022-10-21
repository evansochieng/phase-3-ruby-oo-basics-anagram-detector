# Your code goes here!
require "pry"

# Anagram class
class Anagram
    #initialize with a word
    def initialize(word)
        @my_word = word
    end

    #match method
    def match wordArray
        #binding.pry

        # Loop over the array, check if the words in the array are composed of same letters as the initialized word
        # Get array of letters in every word using #char method then sort => Ensure the letters are in same order
        # Compare the two array of letters and filter if there's a match
        anagrams = wordArray.filter do |str|
            str.chars.sort == @my_word.chars.sort
        end

        #return the array of anagrams
        anagrams
    end
end

# Try it out
diaper = Anagram.new('diaper')
diaper.match(%w[hello world zombies pants dipper])