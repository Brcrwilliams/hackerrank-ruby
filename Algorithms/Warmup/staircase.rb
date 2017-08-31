# https://www.hackerrank.com/challenges/staircase

n = gets.strip.to_i

n.times do |i|
  # i starts at 0, but n is equal to the total number of stairs
  (n-i-1).times { print ' ' }
  (i+1).times { print '#' }
  print "\n"
end

