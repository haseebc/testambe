require 'csv'
require 'json'

rows = []
CSV.foreach('results1.csv', headers: true, converters: :all) do |row|
    rows << row.to_hash
end
puts rows.to_json
newjson = rows.to_json
#create and store a json file as follows
File.open("temp2.json", 'wb') do |file|
    file.write(JSON.generate(rows))
end
#parse a json file
results_object = 'temp2.json'
serialized_results = File.read(results_object)
results = JSON.parse(serialized_results)
results
#if required a pretty json file
results_pretty = JSON.pretty_generate(results)
results_pretty
