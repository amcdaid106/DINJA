require 'open-uri'
require 'nokogiri'

namespace :dinja do
  desc "Run the scraper"
  task scrape: :environment do
    categories = ["vegetables", "spices-and-herbs", "cereals-and-pulses", "meat", "dairy-products",
    "fruits", "seafood", "sugar-and-sugar-products", "nuts-and-oilseeds", "other-ingredients"]


    categories.each do |categorie|
      ('a'..'z').each do |letter|
        html_file = open("http://food.ndtv.com/ingredient/#{categorie}/#{letter}")
        html_doc = Nokogiri::HTML(html_file)

        html_doc.search('h3>a').each do |ingred|

          Ingredient.create(name: ingred.attribute('title'))
        end
      end
    end
  end
end
