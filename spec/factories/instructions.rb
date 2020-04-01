# frozen_literal_string: true

FactoryBot.define do
  factory :instruction do
    structure { assocation(:structure) }
    instruction { assocation(:instruction) }
    name { 'User Story' }
    content { 'A user story is what a user can do with your product. E.G. As a user, I can navigate
               the homepage, so that I understand the' }
  end
end
