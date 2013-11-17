class CreateForestsUsers < ActiveRecord::Migration
  def change
    create_table :forests_users do |t|
      t.belongs_to :user
      t.belongs_to :forest
    end
  end
end
