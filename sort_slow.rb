# Sorting algorithm - slow O(n**2)

arr = [6, 3, 2, 10, 5, 22, 41, 7, 12, 23, 1]

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

p selection_sort(arr)