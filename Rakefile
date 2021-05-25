# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"
require 'net/http'

Rails.application.load_tasks


desc "search melissa for housing data"

task :get_housing_data => :environment do
    # zips = ZipCode.all.map { |zipcode|  {id: zipcode.id, zip: zipcode.zip} }
    zips = [{id: 85, zipcode: 77449}]

    zips.each do |zip|
        puts zip[:zipcode]
        url = "https://www.melissa.com/v2/lookups/newhomeowner/?zipcode=" + zip[:zipcode].to_s + ":&fmt=json"
        result = Net::HTTP.get(URI.parse(url))
        json = JSON.parse(result)
        json.each do |month|
            HousingDatum.create(zip_code_id: zip[:id], year: month["PubYear"], month: month["PubMonthName"], sales_count: month["SaleCnt"], avg_price: month["AvgPrice"] )
        end
    end
end

desc "add random favorite zips to users"

task :add_fav_zips => :environment do
    50.times do
        FavoritedZip.create(user_id: User.all.sample.id, zip_code_id: ZipCode.all.sample.id)
    end
end