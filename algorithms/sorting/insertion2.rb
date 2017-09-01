# https://www.hackerrank.com/challenges/insertionsort2

def doSort(arr, position)
  num = arr[position] # Get the number to be sorted
  arr.delete_at(position) # Remove it from the array
  arr.each_with_index.map do |val, i|
    return arr.insert(i, num) if num <= val # Find where it goes and insert
  end
end

# Get input from stdin
n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

# Loop through the array checking if n < n+1. If it's not, do insertion sort on n+1
(n - 1).times do |i|
  if arr[i] > arr[i + 1]
    arr = doSort(arr, i + 1)
  end
  puts arr.join(' ') # The challenge wants us to print each iteration
end
