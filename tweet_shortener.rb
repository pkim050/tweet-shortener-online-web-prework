require 'pry'
# Write your code here.
def dictionary
{
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(string)
  arr = string.split(" ")
  binding.pry
  arr.each_with_index do |x, i|
    dictionary.each do |k, v|
      x[i] = v if x.downcase == k
    end
  end
  arr.join(" ")
  arr
end

def bulk_tweet_shortner(array)
  array.each {|i| puts word_substituter(i)}
end

def selective_tweet_shortener(string)
  if string.size > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if string.size > 140
    word_substituter(string)
    string[0..136] + "..."
  else
    string
  end
end