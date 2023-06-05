class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :player_id
      t.integer :enemy_id
      t.integer :turn_count, default: 0, null: false

      t.timestamps
    end
  end
end
