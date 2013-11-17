class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :city
      t.integer :size
      t.belongs_to :forest
      t.belongs_to :user

      t.timestamps
    end
  end
end
