#!/usr/bin/env ruby

contents = File.read('source/judete-orase.sql')

county_regex = /\((\d*),\s\'(.*)',\s'(.*)'\)/
locality_regex = /\((\d*),\s(\d*),\s(\d*),\s\'(\d*\.\d*)',\s\'(\d*\.\d*)',\s\'(.*)',\s'(.*)'\)/

counties_result = ''
localities_result = ''

contents.split(/\n/).each do |line|
  county_matches = line.match county_regex
  if county_matches
    counties_result_line = 'County.create!(id: ' + county_matches[1] + ', code: \'' + county_matches[2] + '\', name: \'' + county_matches[3] + '\')'
    counties_result = counties_result + counties_result_line + "\n"
  else
    locality_matches = line.match locality_regex
    if locality_matches
      localities_result_line = 'Locality.create!(county_id: ' + locality_matches[2] + ', name: \'' + locality_matches[6] + '\', siruta: ' + locality_matches[3] + ', latitude: ' + locality_matches[5] + ', longitude: ' + locality_matches[4] + ')'
      localities_result = localities_result + localities_result_line + "\n"
    end
  end
end

File.open('result/counties.rb', 'w') do |file|
  file.write counties_result
end

File.open('result/localities.rb', 'w') do |file|
  file.write localities_result
end