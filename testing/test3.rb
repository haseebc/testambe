require 'csv'
require 'json'

#parse csv
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'results1.csv'

CSV.foreach(filepath, csv_options) do |row|
  puts "#{row['ClientNumber']} with name #{row['FirstName']} #{row['LastName']} and DNI #{row['DNI']} with email #{row['email']} has result #{row['Result']}"
end

#csv to json
rows = []
CSV.foreach('results1.csv', headers: true, converters: :all) do |row|
  rows << row.to_hash
end
puts rows.to_json
newjson = rows.to_json


#create and store a json file as follows
File.open("temp.json","w") do |f|
    f.write(rows.to_json)
end

#create and store a json file as follows. Exctly the same as abobe but uses JSON.generate
File.open("temp2.json", 'wb') do |file|
    file.write(JSON.generate(rows))
end

#parse a json file
results_object = 'temp2.json'
serialized_results = File.read(results_object)
results = JSON.parse(serialized_results)
puts results

puts JSON.pretty_generate(results)