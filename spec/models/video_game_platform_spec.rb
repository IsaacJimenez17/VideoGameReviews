# frozen_string_literal: true

require 'spec_helper'

describe VideoGamesPlatform
  describe 'active record validations' do
    it { is_expected.to belong_to(:video_game) }
    it { is_expected.to belong_to(:platform) }
  end
end
