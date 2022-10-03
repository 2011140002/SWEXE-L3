class AddImage < ActiveRecord::Migration[5.2]
  def up
    add_column :tweets, :image, :binary
  end
end
