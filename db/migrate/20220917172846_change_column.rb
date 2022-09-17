class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    remove_columns :tweets, :image, :binary
    add_column :tweets, :image, :string
  end
end
