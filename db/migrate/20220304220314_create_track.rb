class CreateTrack < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.float :longitude, array:true, default: []
      t.float :latitude, array:true, default: []
      t.integer :time
      t.text :extra

      t.timestamps
    end
  end
end
