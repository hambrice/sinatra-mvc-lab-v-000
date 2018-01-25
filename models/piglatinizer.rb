require 'pry'

class PigLatinizer
  attr_accessor :text


  def piglatinize(word)
    array = word.split('')
    if array.first.match(/[aeiou]/)
      word=
    array = word.split(/([aeiou].*)/)
    word[2] = word[0]
    word.shift
    array.collect do |word|
      word = word.split(/([aeiou].*)/)
      
      word.shift
      word.join
    end
  end
#binding.pry


end

#puts "#{PigLatinizer.new("hello how").create}"
