# https://www.hackerrank.com/challenges/birthday-cake-candles

n = gets.strip
candles = gets.strip.split(' ').map(&:to_i)
puts candles.count(candles.max)
