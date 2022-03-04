class CreateTrack < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.integer :user_id
      t.integer :longitude, array:true, default: []
      t.integer :latitude, array:true, default: []
      t.integer :time
      t.text :extra

      t.timestamps
    end
  end
end
