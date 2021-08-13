require 'csv'


filepath    = 'beers.csv'

CSV.foreach(filepath, headers: true) do |row|
  puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
end