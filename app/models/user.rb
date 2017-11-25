# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :meals
  has_many :ingredients
end
