class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email,null: false
      t.string :password, null: false
      t.integer :phoneno, null: false
      t.string :gender
      t.boolean :verified
      t.boolean :payment
      t.string :payment_id
      t.integer :level
      t.boolean :through_r_code
      t.string :scores

      t.timestamps
    end
  end
end
