# frozen_string_literal: true

Fabricator(:developer) do
  name { Faker::Name.name }
end
