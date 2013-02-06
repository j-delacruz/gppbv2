class AddAgencyTypeIdToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :agency_type_id, :integer
  end
end
