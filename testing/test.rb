require 'csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'results1.csv'

CSV.foreach(filepath, csv_options) do |row|
  puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
end