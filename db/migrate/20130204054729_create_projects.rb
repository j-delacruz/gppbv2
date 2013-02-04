class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :project_procurement_management_plan_id
      t.string :code
      t.string :status
      t.string :mode_of_procurement
      t.string :remarks

      t.timestamps
    end
  end
end
