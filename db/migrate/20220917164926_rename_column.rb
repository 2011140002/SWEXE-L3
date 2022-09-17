class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :tweets, :tweet_image, :image
  end
end
