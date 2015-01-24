require 'nokogiri'
require 'open-uri'

# Store URL to be scraped
url ="https://www.airbnb.com/s/Brooklyn--NY--United-States"

# Parse the page with Nokogiri
page = Nokogiri::HTML(open(url))

# Listing name
page.css('div.h5.listing-name').each do |line|
  puts line.text
end

# Price
page.css('span.h3.price-amount').each do |line|
  puts line.text
end

# Room type, number of reviews, location
page.css('div.text-muted.listing-location.text-truncate').each do |line|
  puts line.text
end
