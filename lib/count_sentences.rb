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
    working_set = self.split(/[.!?]/)
    working_set.delete_if { |e| e == "" }
    working_set.count
  end
end
