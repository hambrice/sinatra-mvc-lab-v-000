require 'pry'

class PigLatinizer
  attr_accessor :text 

  def initialize(text)
    @text = text
  end

  def create
    array = self.text.split(" ")
    array.each do |word|
      arr=word.split("")
      arr.each do |l|
        if l.match(/[aeiou]/)
          arr2 = arr.join.split(l)
          arr3 = []
          arr3[0] = arr2[1]
          arr3[1] = arr2[0]
        end
      end
    end
      binding.pry
        arr3
    end



end

PigLatinizer.new("hello").create
