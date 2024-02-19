# frozen_string_literal: true

require 'spec_helper'

describe Platform
  describe 'active record validations' do
    it { is_expected.to have_many(:video_games).through(:video_games_platforms) }

    it { is_expected.to validate_presence_of(:name) }
  end
end
