class CreatePageUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :page_users do |t|
      t.string :medium_link
      t.string :email

      t.timestamps
    end
  end
end
