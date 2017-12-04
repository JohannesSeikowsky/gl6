class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.id :uid
      t.string :provider
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :location
      t.string :country_code
      t.string :description
      t.string :image_url
      t.string :profile_url
      t.timestamps

      # add index
      add_index :users, :uid
    end
  end
end
