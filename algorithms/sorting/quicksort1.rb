# https://www.hackerrank.com/challenges/quicksort1

def partition(arr)
  pivot = arr[0]
  left = []
  right = []
  equal = []
  arr.map do |val|
    left << val if val < pivot
    right << val if val > pivot
    equal << val if val == pivot
  end
  left << equal << right
end

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)
puts partition(arr).join(' ')
