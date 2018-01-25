require 'pry'

class PigLatinizer
  attr_accessor :text


  def piglatinize(word)
    array = word.split('')
    if array.first.match(/[aeiou]/)
      word += "way"
    else
    word = word.split(/([aeiou].*)/)
    word[2] = word[0]
    word.shift
    word.join += "ay"
    #word += "ay"
    end
    word
  end
#binding.pry


end

#puts "#{PigLatinizer.new("hello how").create}"
