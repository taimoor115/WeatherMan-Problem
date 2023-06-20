require "csv"


# Open CSV File
table = CSV.parse(File.read("/home/taimoor_hussain/Assignment/lahore_weather/lahore_weather_2011_Sep.txt"), headers: true)


max_temp = []
min_temp = []
humid = []
date = []
for i in table
  max_temp << i[1].to_i
  min_temp << i[3]
  humid << i[7].to_i
  date << i[0]
end

max_temperature = max_temp.max()
min_temperature = min_temp.min()
max_humidity = humid.max()

puts "Highest: #{max_temperature}C on #{max_temp.index(max_temperature)}"
puts "Lowest #{min_temperature}C on #{min_temp.index(min_temperature)}"
puts "Humid: #{max_humidity}% on #{humid.index(max_humidity)}"

