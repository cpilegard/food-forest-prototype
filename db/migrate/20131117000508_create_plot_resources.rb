class CreatePlotResources < ActiveRecord::Migration
  def change
    create_table :plot_resources do |t|
      t.boolean :fulfilled
      t.references :plot
      t.references :resource
    end
  end
end
