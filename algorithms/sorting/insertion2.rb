# https://www.hackerrank.com/challenges/insertionsort2

def doSort(arr, position)
  num = arr[position]
  arr.delete_at(position)
  arr.each_with_index.map do |val, i|
    return arr.insert(i, num) if num <= val
  end
end

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)

(n-1).times do |i|
  if arr[i] > arr[i + 1]
    arr = doSort(arr, i + 1)
  end
  puts arr.join(' ')
end
