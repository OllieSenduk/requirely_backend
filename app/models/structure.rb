# frozen_literal_string: true

# Grouping instructions under this model as Structures
class Structure < ApplicationRecord
  belongs_to :user
  has_one :instruction, dependent: :nullify
  has_many :projects, dependent: :nullify
end
