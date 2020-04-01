puts 'Emptying DB...'

Block.destroy_all
Instruction.destroy_all
Project.destroy_all
Structure.destroy_all
User.destroy_all
AdminUser.destroy_all

puts 'Creating one admin'

AdminUser.create!(email: 'ollie@gmail.com', password: 'password')
AdminUser.create!(email: 'inou@gmail.com', password: 'password')

puts 'Creating a user'
user = FactoryBot.create(:user)

puts 'Creating a structure'
user_story_structure = FactoryBot.create(:structure, user: user)

puts 'Creating instructions for that structure'

epic_story = Instruction.create!(
  name: 'Epic Story',
  content: 'A product can be defined in only a few epic stories. As an example [ AirBnB ] : As a User I can book a flat so that I can live anywhere',
  structure: user_story_structure
)

Instruction.create!(
  name: 'Epic Story',
  content: 'User Stories are fine grained elements of an Epic Story, for the book a flat a user story would be: As a User I can search for a Flat so that I can find flats matching my criteria',
  parent: epic_story
)

puts 'Creating a project for this structure'

project = Project.create!(name: 'Requirly', structure: user_story_structure, user: user)

base_instruction = user_story_structure.instruction

puts 'Creating blocks as answers to the instructions as a client'

def create_blocks_for(instruction, project)
  rand(8).times do
    FactoryBot.create(:block, instruction: instruction, project: project)
  end
  create_blocks_for(instruction.child, project) if instruction.child.present?
end

create_blocks_for(base_instruction, project)
