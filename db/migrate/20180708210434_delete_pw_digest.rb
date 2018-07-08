class DeletePwDigest < ActiveRecord::Migration[5.1]
  def change
	remove_column :authors, :password_digest
  end
end
