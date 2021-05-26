# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'
require 'json'
require 'faker'
require 'csv'


######### Initial Seed ##########
# User.all.destroy_all
# ZipCode.all.destroy_all


# 5.times do
#     User.create(username: Faker::Internet.email)
# end

# file = File.read('/Users/coltenappleby/dev/flatiron/code/final_project/hoose-backend/db/assests/zip_code_pop_test.json') 

# data_hash = JSON.parse(file)
# data_hash.each do |data|
#     # puts zip['city']
#     ZipCode.create(zip: data["zip"], name: data["city"], county: data["county"], population: data["pop"])
# end

# ZipCode.all.each do |location| 
#     query_url = "https://www.indeed.com/jobs?l=" + location.zip.to_s + "&radius=15&jt=fulltime&fromage=7&remotejob=7e3167e4-ccb4-49cb-b761-9bae564a0a63" 
#     html = URI.open(query_url)
#     response = Nokogiri::HTML(html)
#     num_jobs = response.css("div#searchCountPages").text.split("of ")[1].split(" jobs")[0].split(",").join()
#     JobSearch.create(
#         zip_code_id: location.id,
#         remote: false,
#         radius: 15,
#         job_type: "fulltime",
#         date_posted: "7",
#         number_of_posts: num_jobs,
#         user_id: User.all.sample.id
#         )
# end


############ Seed All US Zip Codes (well not all zipcodes) ################

# file = File.read('/Users/coltenappleby/dev/flatiron/code/final_project/hoose-backend/db/assests/zip_code_pop_remove_test.json') 

# data_hash = JSON.parse(file)
# data_hash.each do |data|
#     # puts zip['city']
#     ZipCode.create(zip: data["zip"], name: data["city"], county: data["county"], population: data["pop"])
# end

############ Seed All US Zip Codes Job Searches  ################

ZipCode.all.each do |location| 
    query_url = "https://www.indeed.com/jobs?l=#{location.zip.to_s}&radius=15&jt=fulltime&fromage=7&remotejob=7e3167e4-ccb4-49cb-b761-9bae564a0a63" 
    html = URI.open(query_url)
    response = Nokogiri::HTML(html)
    if response.nil?
        puts location.zip.to_s
    end
    num_jobs = response.css("div#searchCountPages").text.split("of ")[1].split(" jobs")[0].split(",").join()
    JobSearch.create(
        zip_code_id: location.id,
        remote: false,
        radius: 15,
        job_type: "fulltime",
        date_posted: "14",
        number_of_posts: num_jobs,
        user_id: User.all.sample.id
        )
end


############ Housing Data Seed #######################
# raw_data = CSV.read('/Users/coltenappleby/dev/flatiron/code/final_project/hoose-backend/db/assests/Housing_Data_Listings_Zillow.csv')


# raw_data.each do |zipcodeInstance|
#     next if ZipCode.find_by(zip: zipcodeInstance[1]).nil? //should have set it to zip_code_id then checked if zip_code_id was nil?
#     zip_code_id = ZipCode.find_by(zip: zipcodeInstance[1]).id 
#     time = zipcodeInstance[0].to_s
#     month_s = time[4]+time[5]
#     year_s = time[0]+time[1]+time[2]+time[3]
#     HousingDatum.create(
#         month: month_s, 
#         year: year_s,  
#         zip_code_id: zip_code_id,
#         sales_count: zipcodeInstance[2],
#         avg_price: zipcodeInstance[3])
# end

