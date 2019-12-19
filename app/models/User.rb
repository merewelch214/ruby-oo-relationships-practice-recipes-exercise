class User < ActiveRecord::Base
    has_many :allergies
    has_many :recipe_cards
    has_many :ingredients, through: :allergies
    has_many :recipes, through: :recipe_cards

    def add_recipe_card(recipe, date, rating)
        new_recipe_card = RecipeCard.create(user_id: self.id, recipe_id: recipe.id, rating: rating, date: date)
    end

    def declare_allergy(ingredient)
        Allergy.create(user_id: self.id, ingredient_id: ingredient.id)
    end
    
    def allergens
        self.ingredients
    end

    def top_three_recipes
        self.recipe_cards.order(rating: :desc).limit(3)
    end

    def most_recent_recipe
        self.recipe_cards.maximum(:date)
    end

end
