class CreateTrack < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.integer :time
      t.string :name
      t.integer :distance
      t.text :coords

      t.timestamps
    end
  end
end
