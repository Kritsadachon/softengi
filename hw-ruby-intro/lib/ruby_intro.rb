# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  sum = 0
  x = arr.each do |n| 
      
  sum = sum + n
end


def max_2_sum (arr)
  sum_of_two_max = 0
  if arr.length() == 0
    sum_of_two_max = 0
  elsif arr.length() == 1
    sum_of_two_max = arr.at(0)
  else
    two_max = arr.max(2)
    two_max.each {|n| sum_of_two_max+= n}
    print sum_of_two_max
  end
 return sum
end


def sum_to_n? (arr,n)
  
  a2 = arr.combination(2).to_a
      answer = false 
  a2.each do |sub_array| 
      
      if sub_array[0] + sub_array[1] == n
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
  if vowels.include? string[0] or vowels.map!(&:upcase).include? string[0]
	  return true
  else
	  return false
  end
end


def binary_multiple_of_4?(s)
  
  answer = false
  if s=="0"
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

  def isbn
      @isbn 
  end
  
  def price
      @price
  end
  
  def isbn=(new_isbn)
      @isbn = new_isbn
  end
      
  def price=(new_price)
      @price = new_price
  end
  
  def price_as_string
    newprice = "$"+ "#{'%.02f' % price}"
  
    return newprice
  end

end