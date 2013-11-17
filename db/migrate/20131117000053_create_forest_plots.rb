class CreateForestPlots < ActiveRecord::Migration
  def change
    create_table :forest_plots do |t|
      t.references :forest
      t.references :plot
    end
  end
end
