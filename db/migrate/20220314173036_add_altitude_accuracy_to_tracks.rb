class AddAltitudeAccuracyToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :altitude_accuracy, :integer, array:true, default: []
  end
end
