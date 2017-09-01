# https://www.hackerrank.com/challenges/time-conversion

def convertTime(time)
  # Converts AM/PM  HH:MM:SS to 24-hour HH:MM:SS 
  # Input will be HH:MM:SSAM
  
  # Get the hour (only thing we need to change) and whether it's AM or PM
  hour = time[0, 2].to_i
  period = time[-2, 2]

  if period == "PM" && hour < 12
    # If it's PM and not on the 12th hour, add 12 hours and output HH:MM:SS
    return (hour + 12).to_s.rjust(2, "0") + time[2..-3] 
  elsif period == "AM" && hour == 12 
    # Need to handle that special case just after midnight when the clock resets
    return "00#{time[2..-3]}"
  else
    # If neither of those conditions are met, then we just output the input time without the AM or PM
    time[0..-3]
  end
end

time = gets.strip
puts convertTime(time)

