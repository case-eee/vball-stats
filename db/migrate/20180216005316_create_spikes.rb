class CreateSpikes < ActiveRecord::Migration[5.1]
  def change
    create_table :spikes do |t|
      t.references :player, foreign_key: true
      t.references :round, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
