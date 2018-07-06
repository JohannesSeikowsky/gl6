class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.boolean :use_medium_img
      t.string :posts_to_import
      t.string :demanded_features
      t.string :full_name
      t.string :email
      t.string :password
      t.boolean :import_permission
      t.boolean :url_investigation_requested

      t.timestamps
    end
  end
end
