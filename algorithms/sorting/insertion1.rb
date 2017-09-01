# https://www.hackerrank.com/challenges/insertionsort1

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)
position = n-1
unsorted = arr[position]

sorted = false
until sorted
  if arr[position-1] > arr[position] && position > 0
    arr[position] = arr[position-1]
    puts arr.join(' ')
    position -= 1
    arr[position] = unsorted
  else
    arr[position] = unsorted
    puts arr.join(' ')
    sorted = true
  end
end
