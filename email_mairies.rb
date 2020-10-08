require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
email_mairies = page.xpath('//tr[@class="txt-primary tr-last"]/td')
array=[]

email_mairies.each do |email_mairies|
    array << email_mairies.text
    puts array

end