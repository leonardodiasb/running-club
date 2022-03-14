class AddAltitudeToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :altitude, :integer, array:true, default: []
  end
end
