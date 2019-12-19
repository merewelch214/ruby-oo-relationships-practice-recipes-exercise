Ingredient.destroy_all
Recipe.destroy_all
User.destroy_all
RecipeCard.destroy_all
RecipeIngredient.destroy_all
Allergy.destroy_all


50.times do
 Ingredient.create(name: Faker::Food.ingredient)
end

50.times do
    Recipe.create(
        name: Faker::Food.dish,
        description: Faker::Food.description
        )
end

50.times do 
    User.create(name: Faker::Name.unique.name)
end

