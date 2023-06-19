require "csv"

table = CSV.parse(File.read("/home/taimoor_hussain/Assignment/lahore_weather/lahore_weather_2011_Sep.txt"), headers: true)
max_temp = []
min_temp = []
humid = []
date = []

for i in table
  max_temp << i[1].to_i
  min_temp << i[3].to_i
  humid << i[7].to_i
  date << i[0]
end
sum = 0
for i in max_temp
  sum += i
end
average_max_temp = sum/(max_temp.size - 1)

counter = 0
for i in min_temp
  counter += i
end
average_min_temp = counter/(min_temp.size - 1)


temp_var = 0
for i in humid
  temp_var += i
end
average_humidity = temp_var/(humid.size - 1)

puts "Highest Average: #{average_max_temp}C"
puts "Lowest Average #{average_min_temp}C"
puts "Average Humidity #{average_humidity}%"
