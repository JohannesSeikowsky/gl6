class AddIndexesToAssociationForeignKeys < ActiveRecord::Migration[5.1]
  def change
  	add_index :contacts, :user_id
  	add_index :reminders, :user_id
  	add_index :profiles, :contact_id
  end
end
