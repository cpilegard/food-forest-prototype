class CreateForests < ActiveRecord::Migration
  def change
    create_table :forests do |t|

      t.timestamps
    end
  end
end
