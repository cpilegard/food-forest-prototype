class CreateResourcesUsers < ActiveRecord::Migration
  def change
    create_table :resources_users do |t|
      t.belongs_to :user
      t.belongs_to :resource
    end
  end
end
