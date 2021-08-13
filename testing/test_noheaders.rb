require 'csv'

filepath = 'beers.csv'

CSV.foreach(filepath) do |row|
  # Here, row is an array of columns
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
end