# frozen_literal_string: true

# Instructions model the instructions that a user gives to his client about each block of a structure
# the name is e.g. user story and the content is the explanation of what that entails
# An instruction has_many and belongs to an instructions
class Instruction < ApplicationRecord
  belongs_to :structure, optional: true
  belongs_to :parent, class_name: 'Instruction', optional: true, foreign_key: 'instruction_id'
  has_one :child, class_name: 'Instruction', dependent: :destroy
end
