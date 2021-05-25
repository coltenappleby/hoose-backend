require 'open-uri'
require 'nokogiri'
require 'json'
require 'net/http'

######################################################################
# #### Works to Query Indeed
# zip_code = "10002"
# job_type = "fulltime"
# radius = "15"
# remote_job = "7e3167e4-ccb4-49cb-b761-9bae564a0a63"
# time_frame = "7"


# # base_url = "https://www.indeed.com/jobs?l=12180&radius=15&jt=fulltime&fromage=7&remotejob=7e3167e4-ccb4-49cb-b761-9bae564a0a63"
# query_url = "https://www.indeed.com/jobs?l=" + zip_code + "&radius=" + radius + "&jt=" + job_type + "&fromage=" + time_frame + "&remotejob=" + remote_job 

# html = URI.open(query_url)
# response = Nokogiri::HTML(html)
# content = response.css("div#searchCountPages").text

# x_jobs = content.split("of ")[1].split(" jobs")[0].split(",").join()
# puts x_jobs

# content = response.css("div#searchCountPages").text.split("of ")[1].split(" jobs")[0].split(",").join() ## one-liner

######################################################################
zip_code = "12180"
url = "https://www.melissa.com/v2/lookups/newhomeowner/?zipcode=" + zip_code + ":&fmt=json"

result = Net::HTTP.get(URI.parse(url))
json = JSON.parse(result)
puts json

puts json[0]["PubYear"]

