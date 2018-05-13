class AddTwitterLifeFeedToVaughnUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :vaughn_users, :twitter_life_feed, :boolean, default: true
  end
end
