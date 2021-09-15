# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each{ |idx| total+=idx}
  return total;
end

def max_2_sum arr
  total = 0
  arr.max(2).each{ |idx| total+=idx}
  return total;
end

def sum_to_n? arr, n
  if arr.length == 1
    return false
  end
  for i in 0..arr.length-1
    for j in 0..arr.length-1
      if ((arr[i] + arr[j]) == n)
        if i != j
          return true
        end
      end
    end
  end
  return false
end

# Part 2
def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if(s.length > 0)
    if(s=~/\A[a-zA-Z]/)
      return !(s=~/\A[AEIOUaeiou]/)
    end
  end
end

def binary_multiple_of_4? s
  if(s=~/[01]+/)
    if (s=~/\A[01]/)
      return (s.to_i(2) % 4 == 0)
    end
  end
  return false
end
# Part 3

class BookInStock
  def initialize(isbn, price) 
    if (isbn.length == 0 || price <= 0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn=isbn
  end
  
  def price
    @price
  end
  def price=(price)
    @price=price
  end
  
  def price_as_string
    if price % 1 == 0
      return "$#{price}.00"
    end
    if (price * 10) % 1 == 0
      return "$#{price}0"
    end
    
    return "$#{price}";
  end
end
