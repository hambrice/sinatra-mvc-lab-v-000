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
    end.join(" ")
  end
#binding.pry


end

puts "#{PigLatinizer.new("hello how").create}"
