class AddUserToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_reference :ingredients, :user, foreign_key: true
  end
end
