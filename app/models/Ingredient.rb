class Ingredient < ActiveRecord::Base
    has_many :allergies
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients
    has_many :users, through: :allergies

    def most_common_allergen
    end

end
