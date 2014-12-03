class CreateMixtapeSongs < ActiveRecord::Migration
  def change
    create_table :mixtape_songs do |t|
      t.string :song_id
      t.string :mixtape_id

      t.timestamps
    end
  end
end
