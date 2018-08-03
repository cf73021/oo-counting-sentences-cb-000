require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = []
    sentences = self.split(/(\z.|\z?|\z!)/)
    binding.pry
    sentences.count
  end
end
