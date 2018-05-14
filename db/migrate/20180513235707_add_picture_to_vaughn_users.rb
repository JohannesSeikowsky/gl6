class AddPictureToVaughnUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :vaughn_users, :picture, :string
  end
end
