class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :metakey
      t.string :metadesc

      t.timestamps
    end
  end
end
