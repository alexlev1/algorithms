# Quick Sort - fast O(n * log n)
def quick_sort(arr)
  if arr.length < 2
    arr
  else
    pivot = arr[(arr.length / 2)]
    # pivot = arr[0]

    less = arr[0..-1].map { |el| el if el < pivot }
    greater = arr[0..-1].map { |el| el if el > pivot }

    quick_sort(less.compact) + [pivot] + quick_sort(greater.compact)
  end
end

# Test algorithm
arraу = []
1000000.times { |n| arraу << n }
arraу.shuffle!

time1 = Time.now.to_i
p quick_sort(arraу)
time2 = Time.now.to_i

p time2 - time1 # 7 seconds for array with 1 mln elements