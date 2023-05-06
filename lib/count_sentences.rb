require 'pry'

class String
  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question? 
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    sentence_squeeze = self.squeeze()
    sentence_split = sentence_squeeze.split(%r{\s*})
    period = sentence_split.count(".")
    question = sentence_split.count("?")
    exclamation = sentence_split.count("!")
    period + question + exclamation
  end
end
