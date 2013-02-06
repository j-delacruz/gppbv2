class AddContractCostToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :contract_cost, :float
  end
end
