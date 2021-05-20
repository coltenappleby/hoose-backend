require 'open-uri'
require 'nokogiri'

url = "https://www.indeed.com/jobs?q=$65,000&l=06820&jt=fulltime&sort=date&fromage=7"

html = URI.open(url)
response = Nokogiri::HTML(html)
puts response.css("div#searchCountPages").text





zip_code = "12180"
job_type = "fulltime"
radius = "15"
remote_job = "7e3167e4-ccb4-49cb-b761-9bae564a0a63"
time_frame = "7"


base_url = "https://www.indeed.com/jobs?l=12180&radius=15&jt=fulltime&fromage=7&remotejob=7e3167e4-ccb4-49cb-b761-9bae564a0a63"

query_url = "https://www.indeed.com/jobs?l=" + zip_code + "&radius=" + radius + "&jt=" + job_type + "&fromage=" + time_frame + "&remotejob=" + remote_job 

puts base_url
puts query_url


html = URI.open(query_url)
response = Nokogiri::HTML(html)
puts response.css("div#searchCountPages").text
