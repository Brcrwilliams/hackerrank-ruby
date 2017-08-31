# https://www.hackerrank.com/challenges/compare-the-triplets

# The template code from the problem used 6 variables but arrays are much cleaner
a = gets.strip.split(' ').map(&:to_i)
b = gets.strip.split(' ').map(&:to_i)
# Initialize the score to zero and iterate it as we compare
score = [0,0]
a.zip(b).each do |a, b|
  score[0] += 1 if a > b
  score[1] += 1 if a < b
end
print score.join(" ")

