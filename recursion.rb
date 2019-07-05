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

# Sum of array elements
def sum(arr)
  if arr.empty?
    0
  else
    head, *tail = arr
    head + sum(tail)
  end
end

# Recursion Reduce
def recur_reduce(array, acc, f)
  if array.empty?
    acc
  else
    head, *tail = array
    recur_reduce(tail, f.(acc, head), f)
  end
end

array = [1, 2, 3, 10, 4, 5]

# Count elements in array
p recur_reduce(array, 0, ->(r, elem) { r + 1 } )

# Max element in array
p recur_reduce(array, 0, ->(r, elem) { r > elem ? r : elem })


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
