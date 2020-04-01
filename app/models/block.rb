# frozen_literal_string: true

# A block define the building blocks for a project.
# They are N amount of answers on the instruction of the user
class Block < ApplicationRecord
  belongs_to :instruction
  belongs_to :project
end
