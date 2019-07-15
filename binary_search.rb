# Binary search algroitm - fast O(log n)

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def search_value(arr, item)
  count = 0
  low = 0
  high = arr.size - 1

  while low <= high
    mid = (high + low)/2
    guess = arr[mid]

    if guess == item
      count += 1
      return "Position: #{mid}, find by #{count} tries"
    elsif guess > item
      high = mid - 1
      count += 1
    else
      low = mid + 1
      count += 1
    end
  end

  return 'Not value'
end

p search_value(arr, 20)