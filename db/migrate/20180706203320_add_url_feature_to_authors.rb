class AddUrlFeatureToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :url_feature, :boolean
    add_column :authors, :email_list_feature, :boolean
    add_column :authors, :contact_me_feature, :boolean
    add_column :authors, :add_pages_feature, :boolean
    add_column :authors, :about_me_feature, :boolean
  end
end
