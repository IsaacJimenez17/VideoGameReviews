# frozen_string_literal: true

Fabricator(:video_game) do
  title { Faker::Name.name }
  description { Faker::Markdown.emphasis }
end
