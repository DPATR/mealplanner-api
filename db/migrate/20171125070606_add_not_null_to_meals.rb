class AddNotNullToMeals < ActiveRecord::Migration[5.1]
  def change
    change_column :meals, :weekday, :string, null: false
    change_column :meals, :mealtype, :string, null: false
    change_column :meals, :entree, :string, null: false
  end
end
