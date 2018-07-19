require 'pry'

class String

  def sentence?
    self.include?(".")
  end

  def question?
    self.include?("?")
  end

  def exclamation?
    self.include?("!")
  end

  def count_sentences
    new = self.split(/[.?!]/)
    new.select{|sentence| !sentence.empty?}.count
  end
end
