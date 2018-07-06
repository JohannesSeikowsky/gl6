class RemoveDemandedFeatures < ActiveRecord::Migration[5.1]
  def change
	remove_column :authors, :demanded_features
  end
end
