# frozen_string_literal: true

require 'spec_helper'

describe Publisher
  describe 'active record validations' do
    it { is_expected.to have_many(:video_games).through(:video_games_publishers) }

    it { is_expected.to validate_presence_of(:name) }
  end
end
