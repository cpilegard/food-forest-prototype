class CreateForests < ActiveRecord::Migration
  def change
    create_table :forests do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
