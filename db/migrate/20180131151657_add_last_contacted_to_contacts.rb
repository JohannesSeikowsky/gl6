class AddLastContactedToContacts < ActiveRecord::Migration[5.1]
  def change
  	add_column :contacts, :last_contacted, :datetime
  end
end
