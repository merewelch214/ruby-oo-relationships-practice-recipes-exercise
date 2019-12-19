class AddDateToRecipeCards < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_cards, :date, :datetime
  end
end
