require 'csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'results1.csv'

CSV.foreach(filepath, csv_options) do |row|
  puts "#{row['ClientNumber']} with name #{row['FirstName']} #{row['LastName']} and DNI #{row['DNI']} with email #{row['email']} has result #{row['Result']}"
end

