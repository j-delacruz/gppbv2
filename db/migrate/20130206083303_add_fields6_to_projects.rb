class AddFields6ToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :estimate_budget_total, :float
    add_column :projects, :estimate_budget_mode, :string
    add_column :projects, :estimate_budget_co, :string
  end
end
