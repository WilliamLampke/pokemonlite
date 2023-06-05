class CreateSpells < ActiveRecord::Migration[7.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :description
      t.integer :spell_type
      t.integer :effect
      t.references :fighter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
