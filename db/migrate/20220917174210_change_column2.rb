class ChangeColumn2 < ActiveRecord::Migration[5.2]
  def change
    remove_columns :tweets, :image, :string
    add_column :tweets, :image, :binary
  end
end
