# frozen_string_literal: true

class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :weekday
      t.string :mealtype
      t.string :entree
      t.string :side1
      t.string :side2

      t.timestamps
    end
  end
end
