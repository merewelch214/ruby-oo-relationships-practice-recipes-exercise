class AddRatingToRecipeCard < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_cards, :rating, :integer
  end
end
