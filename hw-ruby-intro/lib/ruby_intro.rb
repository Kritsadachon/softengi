# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  arr.sum
end


def max_2_sum (arr)
  arr.max(2).sum
end


def sum_to_n? (arr,n)
  a2 = arr.combination(2).to_a
      answer = false 
  a2.each do |sub_array| 
      if sub_array[0] + sub_array[1] == n # sub_array[0] is array, sub_array[1] is a number
          answer = true
      end
  end
  return answer
end


# PART 2

def hello(name)
  return "Hello, #{name}"
end


def starts_with_consonant?(s)
  vowels = ['a', 'e', 'i', 'o', 'u']
  string = s
  if string[0] =~ /[a-z&&[^aeiou]]/
    return true
  else
	  return false
  end
end


def binary_multiple_of_4?(s)
  answer = false
  if s == "0"
      answer = true
  elsif s =~ /^[10]*00$/
      answer = true
  end
  return answer
end

# PART 3 

class BookInStock
  def initialize(isbn, price)
      if isbn.empty? || price <= 0
          raise ArgumentError, "Your input is invalid"
      else
      @isbn = isbn
      @price = price
      end
  end

  def isbn # getter method
      @isbn 
  end
  
  def price # getter method
      @price
  end
  
  def isbn=(new_isbn) # setter method
      @isbn = new_isbn
  end
      
  def price=(new_price) # setter method
      @price = new_price
  end
  
  def price_as_string
    newprice = "$"+ "#{'%.02f' % price}"
    return newprice
  end

end
