class RenamePwAttribute < ActiveRecord::Migration[5.1]
  def change
    rename_column :authors, :password, :password_digest  
  end
end
