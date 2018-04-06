class DefaultsForBooleanValues < ActiveRecord::Migration[5.1]
  def change
	  change_column :vaughn_users, :portrait_feature, :boolean, default: true
	  change_column :vaughn_users, :about_feature, :boolean, default: true
	  change_column :vaughn_users, :email_subscription_feature, :boolean, default: true
	  change_column :vaughn_users, :social_icons_features, :boolean, default: true
	  change_column :vaughn_users, :contact_feature, :boolean, default: true
	  change_column :vaughn_users, :post_one, :boolean, default: true
	  change_column :vaughn_users, :post_two, :boolean, default: true
	  change_column :vaughn_users, :post_three, :boolean, default: true
	  change_column :vaughn_users, :post_four, :boolean, default: true
	  change_column :vaughn_users, :post_five, :boolean, default: true
	  change_column :vaughn_users, :post_six, :boolean, default: true
	  change_column :vaughn_users, :post_seven, :boolean, default: true
	  change_column :vaughn_users, :post_eight, :boolean, default: true
	  change_column :vaughn_users, :post_nine, :boolean, default: true
  end
end
