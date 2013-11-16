class CreateUsers < ActiveRecord::Migration
 def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :remember_token
      t.string :image
      t.string :uid
      t.string :provider
      t.string :oauth_token
      t.date :oath_expires_at
      t.text :bio
      t.boolean :private

      t.timestamps
    end

    add_index :users, :remember_token, :unique => true
    add_index :users, :email, :unique => true

  end
end
