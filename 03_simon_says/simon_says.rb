def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  ([string] * times).join(' ')
end

def start_of_word(string, letters=1)
  newString = []
  string[0, letters].split.each{|x| newString.push(x)}.join('')
end

def first_word(string)
  string.split[0]
end


def titleize(string)
  array = string.split.map do |x|
    if x == "the" || x == "and" || x == "over"
      x
    else
      x.capitalize
    end
  end
  array.first.capitalize!  
  array.join(' ')
  
end
  