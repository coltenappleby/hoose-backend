require 'open-uri'
require 'nokogiri'
require 'json'
require 'rest-client'

# url = "https://www.indeed.com/jobs?q=$65,000&l=06820&jt=fulltime&sort=date&fromage=7"

# html = URI.open(url)
# response = Nokogiri::HTML(html)
# puts response.css("div#searchCountPages").text





zip_code = "10002"
job_type = "fulltime"
radius = "15"
remote_job = "7e3167e4-ccb4-49cb-b761-9bae564a0a63"
time_frame = "7"


base_url = "https://www.indeed.com/jobs?l=12180&radius=15&jt=fulltime&fromage=7&remotejob=7e3167e4-ccb4-49cb-b761-9bae564a0a63"

query_url = "https://www.indeed.com/jobs?l=" + zip_code + "&radius=" + radius + "&jt=" + job_type + "&fromage=" + time_frame + "&remotejob=" + remote_job 

# puts base_url
# puts query_url


# html = URI.open(query_url)
# response = Nokogiri::HTML(html)
# content = response.css("div#searchCountPages").text

# # content = "Page 1 of 1,002 jobs"
# x_jobs = content.split("of ")[1].split(" jobs")[0].split(",").join()
# puts x_jobs

# file = File.read('/Users/coltenappleby/dev/flatiron/code/final_project/hoose-backend/db/assests/zip_code_pop.json') 

# data_hash = JSON.parse(file)
# data_hash.each do |zip|
#     puts zip['city']
# end

# html = URI.open(query_url)
# response = Nokogiri::HTML(html)
# content = response.css("div#searchCountPages").text.split("of ")[1].split(" jobs")[0].split(",").join()

# puts content

res = RestClient.get("https://www.melissa.com/v2/lookups/newhomeowner/?zipcode=12180:&fmt=json")
html = JSON.parse(res.body)
puts html

res = URI.open("https://www.melissa.com/v2/lookups/newhomeowner/?zipcode=12180:&fmt=json")
html = JSON.parse(res.body)
puts html