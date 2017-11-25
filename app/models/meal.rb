# frozen_string_literal: true

class Meal < ApplicationRecord
  belongs_to :user
  validates :weekday, :mealtype, :entree, :user, presence: true
end
