# frozen_literal_string: true

# Grouping instructions under this model as Structures
class Structure < ApplicationRecord
  belongs_to :user
  has_many :instructions, dependent: :nillify
  has_many :projects, dependent: :nillify
end
