class AddFields5ToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :delivery_completion, :datetime
    add_column :projects, :acceptance, :datetime
    add_column :projects, :source_of_funds, :string
  end
end
