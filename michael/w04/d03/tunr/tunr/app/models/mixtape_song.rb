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

class MixtapeSong < ActiveRecord::Base
  belongs_to :songs
  belongs_to :artist
end
