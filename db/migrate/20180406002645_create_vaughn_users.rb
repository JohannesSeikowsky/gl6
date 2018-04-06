class CreateVaughnUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :vaughn_users do |t|
      t.boolean :portrait_feature
      t.boolean :about_feature
      t.boolean :email_subscription_feature
      t.boolean :social_icons_features
      t.boolean :contact_feature
      t.string :about_title
      t.string :about_content

      t.timestamps
    end
  end
end
