class AddBioFeatureToVaughnUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :vaughn_users, :bio_feature, :boolean, default: true
  end
end
