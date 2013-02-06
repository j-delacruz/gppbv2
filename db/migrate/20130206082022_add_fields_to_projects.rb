class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :desciption, :text
    add_column :projects, :pmo_end_user, :string
    add_column :projects, :procurement_method, :string
  end
end
