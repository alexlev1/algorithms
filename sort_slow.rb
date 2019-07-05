# Sorting algorithm - slow O(n**2)
def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0

  for i in (1...arr.length)
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end

  smallest_index
end

def selection_sort(arr)
  new_arr = []

  for i in (0...arr.length)
    index = find_smallest(arr)
    new_arr << arr[index]
    arr.delete(arr[index])
  end
  new_arr
end

arraу = []
20000.times { |n| arraу << n }
arraу.shuffle!

time1 = Time.now.to_i
p selection_sort(arraу)
time2 = Time.now.to_i

p time2 - time1 # 19 seconds for array with 20000 elements