class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.integer :order_id
      t.string :cover

      t.timestamps
    end
  end
end
