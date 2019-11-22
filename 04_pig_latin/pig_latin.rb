def consonant_or_vowel(word)
  if word[0] =~ /[aeiou]/
    word += "ay"
  elsif word[0..1] == "qu"
    word = word[2..] + word[0..1] + "ay"
  elsif word[1..2] == "qu"
    word = word[3..] + word[0..2] + "ay"
  elsif word[0] =~ /[^aeiou]/ && word[1] =~ /[aeiou]/
    word = word[1..] + word[0] + "ay"
  elsif word[0] =~ /[^aeiou]/ && word[1] =~ /[^aeiou]/ && word[2] =~ /[aeiou]/
    word = word[2..] + word[0..1] + "ay"
  else
    word = word[3..] + word[0..2] + "ay"
  end
end
  
def translate(string)
  string.split.map{|x| consonant_or_vowel(x)}.join(' ')
end