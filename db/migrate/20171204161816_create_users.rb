class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :uid
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
    end
  end
end
