class CreateReplays < ActiveRecord::Migration[5.1]
  def change
    create_table :replays do |t|
      t.string :user_said
      t.string :bot_said
      t.text :req
      t.text :res
      t.belongs_to :discussion, index: true

      t.timestamps
    end
  end
end
