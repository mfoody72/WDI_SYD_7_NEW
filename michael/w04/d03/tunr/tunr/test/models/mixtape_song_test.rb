# == Schema Information
#
# Table name: mixtape_songs
#
#  id         :integer          not null, primary key
#  song_id    :string(255)
#  mixtape_id :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class MixtapeSongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
