class AddingPostBooleansToVaugnModel < ActiveRecord::Migration[5.1]
  def change
	add_column :vaughn_users, :post_one, :boolean
	add_column :vaughn_users, :post_two, :boolean
	add_column :vaughn_users, :post_three, :boolean
	add_column :vaughn_users, :post_four, :boolean
	add_column :vaughn_users, :post_five, :boolean
	add_column :vaughn_users, :post_six, :boolean
	add_column :vaughn_users, :post_seven, :boolean
	add_column :vaughn_users, :post_eight, :boolean
	add_column :vaughn_users, :post_nine, :boolean
  end
end
