# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  array.inject(0) {|a, b| a + b}
end

def max_2_sum(array)
  array.sort.max(2).inject(0) { |a, b| a + b}
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  arr.uniq.combination(2).find { |a, b| a + b == n } ? true : false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s !~ /[^01]/ ? s.to_i % 4 == 0 && s.length > 0 : false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    isbn == "" ? (raise ArgumentError) : @isbn = isbn
    price <= 0 ? (raise ArgumentError) : @price = price
  end
  
  def price_as_string
    "$" + "%.2f" % price
  end
end
