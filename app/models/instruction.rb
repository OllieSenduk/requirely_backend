# frozen_literal_string: true

# Instructions model the instructions that a user gives to his client about each block of a structure
# the name is e.g. user story and the content is the explanation of what that entails
# An instruction has_many and belongs to an instructions
class Instruction < ApplicationRecord
  belongs_to :structure
  belongs_to :instruction
  has_many :instructions, dependent: :destroy
end
