class CreateDiscussions < ActiveRecord::Migration[5.1]
  def change
    create_table :discussions do |t|
      t.string :session_id
      t.string :station_start
      t.string :station_end
      t.boolean :insulted

      t.timestamps
    end
  end
end
