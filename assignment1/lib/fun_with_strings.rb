module FunWithStrings
  def palindrome?
    temp  = self.downcase.scan(/\w/)
    result = temp == temp.reverse
    return result
  end

  def count_words
    self.downcase!
    string = self.split.join(' ')
    array = string.split(/\W+/)
    h =Hash.new
    array.each do |x|
    #for x in array
      temp = x.lstrip
      if h.has_key?(temp)
        h[temp]+=1
      else
        h[temp]=1
      end
    end
    return h
  end

  def anagram_groups
    array = self.split(/\W+/)
    h = Hash.new
    for i in array
      if h.has_key?(i.chars.sort.join.downcase)
        h[i.chars.sort.join.downcase].push(i)
      else
        h[i.chars.sort.join.downcase] = Array.[](i)
      end
    end
    result = Array.[]()
    for i in h.keys
      result.push(h[i])
    end
    return result
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
