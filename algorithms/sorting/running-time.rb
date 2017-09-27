# https://www.hackerrank.com/challenges/runningtime

def insertionSort(arr)
  sorts = 0
  (arr.length - 1).times do |i|
    if arr[i + 1] < arr[i]
      pos = i + 1
      num = arr[pos]
      (pos).times do
        arr[pos] = arr[pos - 1]
        arr[pos - 1] = num
        sorts += 1
        pos -= 1
        break if arr[pos - 1] <= arr[pos]
      end
    end
  end
  puts sorts
  return arr
end

# Get input from stdin
n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)
arr = insertionSort(arr)
