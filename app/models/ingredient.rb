# frozen_string_literal: true

class Ingredient < ApplicationRecord
  belongs_to :user
  validates :ingredient, :user, presence: true
end
