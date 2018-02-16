class CreatePasses < ActiveRecord::Migration[5.1]
  def change
    create_table :passes do |t|
      t.references :player, foreign_key: true
      t.references :round, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
