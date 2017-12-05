class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :comment
      t.integer :contact_id

      t.timestamps
    end
  end
end
