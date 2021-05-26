require 'csv'

raw_data = CSV.read('/Users/coltenappleby/dev/flatiron/code/final_project/hoose-backend/db/assests/Housing_Data_Listings_Zillow.csv')


# time = raw_data[1][0].to_s
# month = time[4]+time[5]
# year = time[0]+time[1]+time[2]+time[3]
# puts "month: #{month}" 
# puts "year: #{year}"

raw_data.each do |zipcodeInstance|
    next if zip_code_id = ZipCode.find_by(zip: zipcodeInstance[1]).valid?
    puts zipcodeInstance[1]
end