class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :human_name
      t.text :synonyms

      t.timestamps
    end
  end
end
