class CreateReminders < ActiveRecord::Migration[5.1]
  def change
    create_table :reminders do |t|
      t.datetime :date
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
