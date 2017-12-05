class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.boolean :this_month
      t.integer :interval

      t.timestamps
    end
  end
end
