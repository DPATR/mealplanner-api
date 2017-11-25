# frozen_string_literal: true

class MealSerializer < ActiveModel::Serializer
  attributes :id, :weekday, :mealtype, :entree, :side1, :side2
end
