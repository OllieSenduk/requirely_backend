# frozen_literal_string: true

FactoryBot.define do
  factory :project do
    name { Faker::Company.name }
    structure { association(:structure) }
    user { association(:user) }
  end
end
