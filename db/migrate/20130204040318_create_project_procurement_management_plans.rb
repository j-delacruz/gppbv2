class CreateProjectProcurementManagementPlans < ActiveRecord::Migration
  def change
    create_table :project_procurement_management_plans do |t|
      t.string :name
      t.integer :user_id
      t.integer :agency_id

      t.timestamps
    end
  end
end
