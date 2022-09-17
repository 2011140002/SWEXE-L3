class AddImage < ActiveRecord::Migration[5.2]
  def up
    add_column :tweets, :tweet_image, :binary
  end
end
