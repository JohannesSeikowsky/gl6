class DefaultsForBooleanValues < ActiveRecord::Migration[5.1]
  def change
	  change_column :vaughn_users, :portrait_feature, :boolena, default: true
	  change_column :vaughn_users, :about_feature, :boolena, default: true
	  change_column :vaughn_users, :email_subscription_feature, :boolena, default: true
	  change_column :vaughn_users, :social_icons_features, :boolena, default: true
	  change_column :vaughn_users, :contact_feature, :boolena, default: true
	  change_column :vaughn_users, :post_one, :boolena, default: true
	  change_column :vaughn_users, :post_two, :boolena, default: true
	  change_column :vaughn_users, :post_three, :boolena, default: true
	  change_column :vaughn_users, :post_four, :boolena, default: true
	  change_column :vaughn_users, :post_five, :boolena, default: true
	  change_column :vaughn_users, :post_six, :boolena, default: true
	  change_column :vaughn_users, :post_seven, :boolena, default: true
	  change_column :vaughn_users, :post_eight, :boolena, default: true
	  change_column :vaughn_users, :post_nine, :boolena, default: true
  end
end
