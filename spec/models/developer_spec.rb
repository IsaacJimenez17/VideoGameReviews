# frozen_string_literal: true

require 'rails_helper'

describe Developer do
  describe 'active record validations' do
    it { is_expected.to have_many(:video_games).through(:video_games_developer) }

    it { is_expected.to validate_presence_of(:name) }
  end
end
