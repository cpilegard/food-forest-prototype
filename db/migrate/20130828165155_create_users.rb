class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :remember_token
      t.text :bio
      t.boolean :private

      t.timestamps
    end

    add_index :users, :remember_token, :unique => true
    add_index :users, :email, :unique => true

  end
end
