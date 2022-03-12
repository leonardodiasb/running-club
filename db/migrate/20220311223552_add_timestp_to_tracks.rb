class AddTimestpToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :timestp, :bigint, array:true, default: []
  end
end
