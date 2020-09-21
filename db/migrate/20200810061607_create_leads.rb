class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.integer :mobile
      t.string :query

      t.timestamps
    end
  end
end
