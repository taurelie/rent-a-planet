class ChangeNameTypeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :planets, :type, :planet_type
  end
end
