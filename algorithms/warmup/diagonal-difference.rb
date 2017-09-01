# https://www.hackerrank.com/challenges/diagonal-difference

# Parse input
n = gets.strip.to_i
a = Array.new(n)
n.times do |i|
  a[i] = gets.strip.split(' ').map(&:to_i)
end
# Input is stored in variable a as an array of arrays. e.g.
# [[1,2,3,4],
# [1,2,3,4],
# [1,2,3,4],
# [1,2,3,4]]

# Variables to hold our two diagonal sums
d1 = 0
d2 = 0

a.each_with_index.map do |line, i|
  d1 += line[i]
  d2 += line[n-i-1]
end

# Output should be the absolute value of d1 minus d2
puts (d1 - d2).abs
