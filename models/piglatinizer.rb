require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def create
    final = []
    array = self.text.split(" ")
    array.collect do |word|
      word = word.split(/([aeiou].*)/)
      word[2] = word[0]
      word.shift
      word = word.join + "ay"
      binding.pry
      #word += "ay"
    end.join
  end
#binding.pry


end

PigLatinizer.new("hello").create
