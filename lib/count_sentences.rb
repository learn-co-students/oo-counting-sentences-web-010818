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
    # scan has regex to split string and strip will remove trailing spaces.
    # credit: https://stackoverflow.com/questions/32451429/count-number-of-sentence-ruby
    # self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count

    # More naive solution
    words = self.split
    #find all words that end with ".!?"
    count = 0
    words.each do |word|
      last = word[word.size - 1]
      if (last == ".") || (last == "?") || (last == "!")
        count += 1
      end
    end
    count
  end
end
