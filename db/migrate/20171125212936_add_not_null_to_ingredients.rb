class AddNotNullToIngredients < ActiveRecord::Migration[5.1]
  def change
    change_column :ingredients, :ingredient, :string, null: false
  end
end
