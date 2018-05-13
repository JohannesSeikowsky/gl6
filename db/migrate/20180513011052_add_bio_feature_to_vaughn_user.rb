class AddBioFeatureToVaughnUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :vaughn_users, :bio_title, :string
  	add_column :vaughn_users, :bio_content, :text
  end
end
