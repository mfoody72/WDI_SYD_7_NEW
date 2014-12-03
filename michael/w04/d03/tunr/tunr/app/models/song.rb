# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  year       :string(255)
#  genre      :string(255)
#  duration   :string(255)
#  artist_id  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base
  belongs_to :artist
  hhas_many :mixtape_songs
  has_many :songs, through: :mixtape_songs
end
