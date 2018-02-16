class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.references :team

      t.timestamps
    end
  end
end
