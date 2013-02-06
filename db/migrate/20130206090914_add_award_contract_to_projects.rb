class AddAwardContractToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :award_contract, :datetime
  end
end
