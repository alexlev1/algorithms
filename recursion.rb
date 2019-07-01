# Recursions algorithms

# Factorial - slow algorithm O(n!)
def factorial(x)
  if x == 1
    1 # Basic part
  else
    x * factorial(x - 1) # Recursion part
  end
end

# Loop with recursion
def loop_one(x)
  p x
  if x <= 1
    x
  else
    loop_one(x - 1)
  end
end

# Flatten Array with Recursion
class Array
  def new_flatten(arr2)
    self.each do |el|
      if el.is_a? Array
        el.new_flatten(arr2)
      else
        arr2 << el
      end
    end
  end
end