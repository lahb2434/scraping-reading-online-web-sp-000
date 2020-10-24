require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
courses = doc.css("id-3c239880-48cf-5ce7-84d0-578546d87586.inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course| 
  puts 'yes' course.text.strip
end


