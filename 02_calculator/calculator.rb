def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.inject(0, :+)
end

def multiply(array)
  array.inject(:*)
end

def power(a, b)
  a ** b
end

def factorial(num)
  array = [num]
  while num > 0
    if num - 1 > 0
      array.push(num - 1)
    end
    num -= 1
  end
  array.inject(:*)
end