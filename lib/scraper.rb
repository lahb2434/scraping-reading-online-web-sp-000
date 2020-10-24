require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
courses = doc.css(".gridContainer-EnvccM .title-oE5vT4")

courses.each do |course| 
  puts "The best #{course.text.strip.upcase} you ever bet you\'d see again!!"
end


