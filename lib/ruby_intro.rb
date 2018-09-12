
# Abby Parker
# CSCI 602

# Part 1

# Returns the sum of the elements in an array or 0 if the array is empty
def sum arr
  sum = 0
  arr.each { |num| sum += num }
  return sum
end

# Returns the sum of the largest two elements in the array
def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1 
    return arr[0]
  else
    arr.sort!
    return arr.last + arr.at(arr.length-2)
  end
end

# Determines if any two elements in the array add up to n
def sum_to_n? arr, n
  if arr.empty?
    return false
  end
  
  for i in 0..arr.length-1
    for j in 1..arr.length-1
      if i==j then
        next
      elsif arr[i] + arr[j] == n
        return true
      end
    end
  end
  
  return false
end
  

# Part 2

def hello(name)
  "Hello, #{name}"
end

# Matches words that start with a consonant
def starts_with_consonant? s
  /^[^\W\daeiouAEIOU_]/.match?(s)
end

# determines if the binary number is a multiple of 4
def binary_multiple_of_4? s
  if /^(0|1)+$/.match?(s)
    return s.to_i(2) % 4 == 0
  end
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError, 'isbn is empty' if isbn.empty?
    raise ArgumentError, 'price was less than or equal to 0' if price <= 0

    @isbn = isbn
    @price = price
  end
  
  def isbn=(isbn)
    raise ArgumentError, 'isbn is empty' if isbn.empty?
    @isbn = isbn
  end
  
  def price=(price)
    raise ArgumentError, 'price was less than or equal to 0' if price <= 0
    @price = price
  end
  
  def price_as_string
    "$%.2f" % price
  end
end
