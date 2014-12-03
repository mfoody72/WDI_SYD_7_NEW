# == Schema Information
#
# Table name: mixtapes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  user_id     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Mixtape < ActiveRecord::Base
  has_many :mixtape_songs
  has_many :mixtapes, through: :mixtape_songs
end
