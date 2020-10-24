require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
courses = doc.css(".gridContainer-EnvccM .")

courses.each do |course| 
  puts course.text.strip
end


