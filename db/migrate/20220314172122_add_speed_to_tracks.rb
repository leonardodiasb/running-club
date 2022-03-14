class AddSpeedToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :speed, :integer, array:true, default: []
  end
end
