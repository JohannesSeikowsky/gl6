class AddBackgroundImgToVaughnUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :vaughn_users, :background_img, :string
  end
end
