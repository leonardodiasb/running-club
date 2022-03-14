class AddAccuracyToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :accuracy, :integer, array:true, default: []
  end
end
