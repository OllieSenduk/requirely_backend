# frozen_literal_string: true

FactoryBot.define do
  factory :structure do
    name { 'User Stories' }
    user { association(:user) }
  end
end
