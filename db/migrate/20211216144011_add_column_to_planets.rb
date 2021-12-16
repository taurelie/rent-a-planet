class AddColumnToPlanets < ActiveRecord::Migration[6.1]
  def change
    add_column :planets, :photo, :string
  end
end
