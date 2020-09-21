class AddFieldToUsers < ActiveRecord::Migration[6.0]
  def change
  	remove_column :leads, :mobile ,:integer  
  	add_column :leads, :mobile ,:string
  end
end
