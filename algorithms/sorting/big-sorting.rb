# https://www.hackerrank.com/challenges/big-sorting

n = gets.strip.to_i

nums = []
n.times do
  nums << gets.strip.to_i
end

puts nums.sort
