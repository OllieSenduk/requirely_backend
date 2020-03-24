# frozen_literal_string: true

USER_STORIES = [
  'As a User I can visit the homepage so that I can understand the website',
  'As a User I can purchase a course so that I can follow it',
  'As a User I can like an object so that I can find it in my liked objects',
  'As a User I can befriend a friend so that I have more friends',
  'As a User I can access the shell so that I can manually update my records',
  'As a Admin I can do basically anything so that I am all powerful',
  'As a Horse I can make funny noises so that people understand Im a horse',
].freeze

FactoryBot.define do
  factory :block do
    instruction { association(:instruction) }
    project { association(:project) }
    content { USER_STORIES.sample }
  end
end
