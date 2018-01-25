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
      word[1] += "ay"
      word[2] = word[0]
      word.shift.join
    end.join
  end



end

PigLatinizer.new("hello").create
