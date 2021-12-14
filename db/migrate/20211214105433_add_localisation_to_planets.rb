class AddLocalisationToPlanets < ActiveRecord::Migration[6.1]
  def change
    add_column :planets, :localisation, :string
  end
end
