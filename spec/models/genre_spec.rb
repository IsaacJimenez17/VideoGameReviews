# frozen_string_literal: true

require 'spec_helper'

describe Genre do
  describe 'active record validations' do
    it { is_expected.to have_many(:video_games_genres) }
    it { is_expected.to have_many(:video_games).through(:video_games_genres) }

    it { is_expected.to validate_presence_of(:name) }
  end
end
