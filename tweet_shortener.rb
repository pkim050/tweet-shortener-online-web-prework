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
  arr = string.split
  puts arr
  arr.each_with_index do |x, i|
    dictionary.each do |k, v|
      x[i] = v if x.downcase == k
    end
  end
  arr.join(" ")
  arr
end