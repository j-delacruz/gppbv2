class AddFields2ToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_cost, :float
    add_column :projects, :pre_procurement_conference, :datetime
  end
end
