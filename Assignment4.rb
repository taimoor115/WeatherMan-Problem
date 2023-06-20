require "csv"
require "colorize"

table = CSV.parse(File.read("/home/taimoor_hussain/Assignment/lahore_weather/lahore_weather_2011_Sep.txt"), headers: true)

max_temp = []
min_temp = []
date = []

i = 1
j = 1
while i != table.length
  max_temp << table[i][j]
  i += 1
end

i = 1
j = 3
while i != table.length
  min_temp << table[i][j]
  i += 1
end

n = max_temp.length

for i in 0..n-1
  print "#{i+1}"
  for k in 0..min_temp[i].to_i-1
    print "+".blue
  end
  for j in 0..max_temp[i].to_i-1
    print"+".red
  end
  print "#{min_temp[i].to_i}-#{max_temp[i].to_i-1}"
  puts ""


end

