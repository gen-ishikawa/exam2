class AddImageCacheToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :image_cache, :string
  end
end
