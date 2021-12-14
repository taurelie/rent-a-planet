class CreatePlanets < ActiveRecord::Migration[6.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :type
      t.integer :safety
      t.text :description
      t.integer :prix
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
