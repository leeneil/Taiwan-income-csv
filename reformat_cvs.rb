# encoding=utf-8 
require 'csv'

lines = STDIN.read #.split("\n")

if ARGV.length > 0
	filename = ARGV[0]
else
	filename = "output"
end

pat = /([\u4e00-\u9fa5,]{0,5})[,]?([\u4e00-\u9fa5]{3,5}),[,]?(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+.\d+),(\d+.\d+)/

data = lines.scan(pat).to_a

new_data = []

# puts data

district = ""

for datum in data
	datum[0] = datum[0].gsub(',', '')
	if datum[0].size > 0
		district = datum[0]
	else 
		datum[0] = district
	end
	puts datum[0] + '/' + datum[1]
	new_data << datum 
end

CSV.open(filename+".csv", "w") do |csv|
  csv << ["","","納稅單位","綜合所得總額","平均數","中位數","第一分位數","第三分位數","標準差","變異係數"]  
  for datum in new_data
  	csv << datum
  end
end