require 'pry'

class String

  def sentence?
    self[self.size - 1] == "."
  end

  def question?
    self[self.size - 1] == "?"
  end

  def exclamation?
    self[self.size - 1] == "!"
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count # scan has regex to split string and strip will remove trailing spaces.
  end
end
