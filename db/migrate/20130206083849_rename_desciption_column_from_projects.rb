class RenameDesciptionColumnFromProjects < ActiveRecord::Migration
  def self.up
  	rename_column :projects, :desciption, :description
  end

  def self.down
  end
end
