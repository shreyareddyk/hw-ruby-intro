# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.size != 0 ? (return arr.max(2).inject(0, :+)) : (return 0)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).detect { |num1, num2| num1 + num2 == n } # num1,num2 such that sum equals to n
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s == nil ? true : (s[0] =~ /[aeiou\W]/i) ? false : true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^[01]*(00)$/.match(s) or s=="0" #observation: required solution should have 2 0's in the end
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn, :price

  def price= price
    price = price.to_f
    if price <= 0
      raise ArgumentError.new("Price can neither be negative nor be zero")
    end
    @price = price
  end
  
  def isbn= isbn
    if isbn == ''
      raise ArgumentError.new("ISBN number cannot be empty")
    end
    @isbn = isbn
  end

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    return "$" + sprintf("%.2f", price)
  end
end
