# https://www.hackerrank.com/challenges/countingsort2

def countingSort(arr)
  # Initialize an array to store counts, default value 0
  count = Array.new(100, 0)
  # Count the number of times each number 0 - 99 appears
  arr.map { |val| count[val] += 1 }
  sorted = []
  # Sort the array by concatenating the counted numbers in order onto a blank array
  count.each_with_index.map do |val, i|
    val.times { sorted << i }
  end
  return sorted
end

# Get input
n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

puts countingSort(arr).join(' ') # Output the sorted array separated by spaces
