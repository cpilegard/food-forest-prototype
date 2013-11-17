class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.boolean :fulfilled
      t.references :plot
      t.references :resource
    end
  end
end
