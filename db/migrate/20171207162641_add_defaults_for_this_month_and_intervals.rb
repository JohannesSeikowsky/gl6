class AddDefaultsForThisMonthAndIntervals < ActiveRecord::Migration[5.1]
  def change
  	change_column :contacts, :this_month, :boolean, default: false
  	change_column :contacts, :interval, :integer, default: 3
  end
end
