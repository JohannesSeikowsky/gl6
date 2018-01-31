class AddTagsToProfile < ActiveRecord::Migration[5.1]
  def change
  	add_column :profiles, :tags, :string
  end
end
