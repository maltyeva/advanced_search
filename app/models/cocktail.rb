class Cocktail < ApplicationRecord
  acts_as_taggable_on :categories
  acts_as_taggable_on :flavors

  $flavors = ['sweet', 'citrusy', 'sour', 'strong', 'bitter']
  $categories = ["Before Dinner Cocktail", "All Day Cocktail", "Longdrink", "Sparkling Cocktail", "After Dinner Cocktail", "Hot Drink"]
end
