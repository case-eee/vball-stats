class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.string :name
      t.references :team

      t.timestamps
    end
  end
end
