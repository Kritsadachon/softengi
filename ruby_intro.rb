# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{|x| sum = sum + x}
  return sum
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.size == 1
  arr.sort!
  arr[arr.length - 1] + arr[arr.length - 2]

  
end

def sum_to_n? arr, n
  sum = false
  return false if arr.size <= 1
  arr.each_index do |i|
    arr.each_index do |j|
      sum = true if (arr[i] + arr[j] == n)
    end
  end
  return sum  

end

# Part 2

def hello(name)
  return "Hello, #{name}"
  
end

def starts_with_consonant? s
  ans = false
  if s =~ /\A(?=[a-z])(?=[aeiou])/i
    ans = true
  
  end
  return ans
end

def binary_multiple_of_4? s
  ans = false
  bi = s.to_i(2)
  if bi%4 == 0
    ans = true
  end
  return ans
  
end

# Part 3

class BookInStock
  def isbn 

  def price_as_string
# YOUR CODE HERE
end
