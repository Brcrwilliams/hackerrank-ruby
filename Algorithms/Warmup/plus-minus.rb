# https://www.hackerrank.com/challenges/plus-minus

n = gets.strip.to_i
numbers = gets.strip.split(' ').map(&:to_i)

sums = Hash.new(0) # Using a hash so that you can tell which number is which.

# Count the positive, negative, and zero numbers and store the counts in the hash
numbers.map do |num|
  sums[:positive] += 1 if num > 0
  sums[:negative] += 1 if num < 0
  sums[:zero] += 1 if num == 0
end

# Make a new hash to store the fractions to avoid mutation
fracs = Hash.new(0)
sums.map do |key, value|
  fracs[key] = value.to_f / n
end

puts fracs[:positive], fracs[:negative], fracs[:zero]
