# https://www.hackerrank.com/challenges/countingsort1

def countArray(arr)
  count = Array.new(100, 0)
  arr.map { |val| count[val] += 1 }
  return count
end

n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)
puts countArray(arr).join(' ')
