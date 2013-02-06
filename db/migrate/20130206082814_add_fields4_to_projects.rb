class AddFields4ToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :bid_evaluation, :datetime
    add_column :projects, :post_quali_evaluation, :datetime
    add_column :projects, :notice_proceed, :datetime
  end
end
