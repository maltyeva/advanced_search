require 'json'
require 'open-uri'

url = "https://raw.githubusercontent.com/maltyeva/iba-cocktails/master/recipes.json"

Cocktail.delete_all if Rails.env.development?


flavors = ['sweet', 'citrusy', 'sour', 'strong', 'bitter']

cocktails = JSON.parse(open(url).read)

cocktails.each do |cocktail|
  Cocktail.create!(name: cocktail["name"],
                   glass: cocktail["glass"],
                   preparation: cocktail["preparation"],
                   category_list: cocktail["category"],
                   flavor_list: flavors.sample)
end
