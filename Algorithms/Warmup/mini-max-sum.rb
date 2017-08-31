# https://www.hackerrank.com/challenges/mini-max-sum

nums = gets.strip.split(' ').map(&:to_i)
max = nums.sort.drop(1).sum

reverse = nums.sort { |a,b| b <=> a }
min = reverse.drop(1).sum

puts "#{min} #{max}"
