class CreateUserResources < ActiveRecord::Migration
  def change
    create_table :user_resources do |t|
      t.references :user
      t.references :resource
    end
  end
end
