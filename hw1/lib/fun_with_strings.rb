module FunWithStrings
  def palindrome?
    self.downcase.reverse.gsub(/[^a-z]/i, '') == self.downcase.gsub(/[^a-z]/i, '')
  end

  def count_words
    words = self.downcase.gsub(/[^a-z ]/i, '').split(" ")
    wordsCount = Hash.new

    words.each do |word|
      if(wordsCount.key?(word))
        wordsCount[word] += 1
      else
        wordsCount[word] = 1
      end
    end
    return wordsCount
  end

  def anagram_groups
    words = self.downcase.gsub(/[^a-z ]/i, '').split(" ")
    words.group_by { |element| element.downcase.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
